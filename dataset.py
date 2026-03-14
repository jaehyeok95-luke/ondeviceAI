import os
import json
import random
from collections import defaultdict
from PIL import Image
from torch.utils.data import Dataset
import torchvision.transforms as T


CHO_LIST  = list('ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ')
JUNG_LIST = list('ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ')
JONG_LIST = [' '] + list('ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ')


def decompose_hangul(ch):
    code = ord(ch) - 0xAC00
    cho  = code // (21 * 28)
    jung = (code % (21 * 28)) // 28
    jong = code % 28
    return cho, jung, jong


def compose_hangul(cho, jung, jong):
    code = 0xAC00 + cho * 21 * 28 + jung * 28 + jong
    return chr(code)


class AIHubHangulDataset(Dataset):
    def __init__(self, json_path, img_dirs, transform=None, max_per_char=100):
        self.transform = transform
        self.samples = []

        # 이미지 파일 맵
        print("이미지 파일 스캔 중...")
        file_map = {}
        for img_dir in img_dirs:
            if not os.path.exists(img_dir):
                print(f"  경로 없음, 스킵: {img_dir}")
                continue
            for fname in os.listdir(img_dir):
                if fname.lower().endswith(('.png', '.jpg', '.jpeg')):
                    file_map[fname] = os.path.join(img_dir, fname)
        print(f"  총 이미지 파일: {len(file_map):,}개")

        # JSON 로딩
        print(f"JSON 로딩 중: {json_path}")
        with open(json_path, 'r', encoding='utf-8') as f:
            meta = json.load(f)

        id2file = {}
        for img in meta['images']:
            id2file[img['id']] = img['file_name']

        # 어노테이션 파싱
        print("어노테이션 파싱 중...")
        char_buckets = defaultdict(list)
        skipped = 0

        for ann in meta['annotations']:
            ann_type = ann.get('attributes', {}).get('type', '')
            if ann_type not in ['글자(음절)', 'character', '음절']:
                continue
            ch = ann.get('text', '')
            if len(ch) != 1 or not (0xAC00 <= ord(ch) <= 0xD7A3):
                continue
            image_id = ann.get('image_id', '')
            file_name = id2file.get(image_id, '')
            if not file_name:
                skipped += 1
                continue
            full_path = file_map.get(file_name)
            if full_path is None:
                skipped += 1
                continue
            cho, jung, jong = decompose_hangul(ch)
            char_buckets[ch].append((full_path, cho, jung, jong))

        print(f"  매칭된 글자 종류: {len(char_buckets):,}")
        print(f"  스킵된 어노테이션: {skipped:,}")

        # 균등 샘플링
        for ch, items in char_buckets.items():
            sampled = random.sample(items, min(max_per_char, len(items)))
            self.samples.extend(sampled)

        random.shuffle(self.samples)
        print(f"  최종 샘플 수: {len(self.samples):,}\n")

    def __len__(self):
        return len(self.samples)

    def __getitem__(self, idx):
        path, cho, jung, jong = self.samples[idx]
        try:
            img = Image.open(path).convert('L')
        except Exception:
            img = Image.new('L', (64, 64), 0)
        if self.transform:
            img = self.transform(img)
        return img, cho, jung, jong


# ── Transform (64×64) ──
train_transform = T.Compose([
    T.Resize((64, 64)),
    T.RandomRotation(15),
    T.RandomAffine(
        degrees=0,
        translate=(0.08, 0.08),
        scale=(0.85, 1.15),
        shear=10
    ),
    T.RandomPerspective(distortion_scale=0.15, p=0.3),
    T.GaussianBlur(kernel_size=3, sigma=(0.1, 1.0)),
    T.RandomInvert(p=0.05),
    T.ToTensor(),
    T.Normalize([0.5], [0.5]),
    T.RandomErasing(p=0.1, scale=(0.02, 0.08))
])

val_transform = T.Compose([
    T.Resize((64, 64)),
    T.ToTensor(),
    T.Normalize([0.5], [0.5])
])
