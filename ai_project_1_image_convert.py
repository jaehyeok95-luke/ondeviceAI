import os
import json
from PIL import Image

IMAGES_DIR = "/media/jaehyeok95/새 볼륨/060.고해상도 도로노면 이미지 데이터/3.개방데이터/1.데이터/Training/01.원천데이터/TS_G_A_F_01"
LABELS_DIR = "/media/jaehyeok95/새 볼륨/060.고해상도 도로노면 이미지 데이터/3.개방데이터/1.데이터/Training/02.라벨링데이터/TL_G_A_F_01"
OUT_JSON = "/media/jaehyeok95/새 볼륨/060.고해상도 도로노면 이미지 데이터/3.개방데이터/1.데이터/Training/coco_G_A_F_01.json"

image_files = sorted([
    f for f in os.listdir(IMAGES_DIR)
    if f.lower().endswith((".jpg", ".jpeg", ".png"))
])

coco = {
    "info": {"description": "Road Defect Dataset"},
    "licenses": [],
    "images": [],
    "annotations": [],
    "categories": []
}

# 카테고리 초기화 (사용자 데이터 기준)
first_json_path = os.path.join(LABELS_DIR, os.listdir(LABELS_DIR)[0])
with open(first_json_path, "r", encoding="utf-8") as f:
    first_data = json.load(f)
coco["categories"] = first_data["categories"]

category_ids = [c["id"] for c in coco["categories"]]

next_image_id = 1
next_ann_id = 1

for img_file in image_files:
    base = os.path.splitext(img_file)[0]
    json_path = os.path.join(LABELS_DIR, base + ".json")
    img_path = os.path.join(IMAGES_DIR, img_file)

    if not os.path.exists(json_path):
        print(f"⚠ 라벨 없음: {img_file}")
        continue

    w, h = Image.open(img_path).size

    # image 등록
    coco["images"].append({
        "id": next_image_id,
        "file_name": img_file,
        "width": w,
        "height": h
    })

    # annotation 읽기
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    for ann in data.get("annotations", []):
        cat_id = ann["category_id"]
        if cat_id not in category_ids:
            print(f"⚠ 알 수 없는 category_id: {cat_id} in {json_path}")
            continue

        x, y, bw, bh = ann["bbox"]

        coco["annotations"].append({
            "id": next_ann_id,
            "image_id": next_image_id,  # 재매핑!
            "category_id": cat_id,
            "bbox": [x, y, bw, bh],
            "area": float(ann.get("area", bw * bh)),
            "iscrowd": int(ann.get("iscrowd", 0))
        })

        next_ann_id += 1

    next_image_id += 1

# 저장
os.makedirs(os.path.dirname(OUT_JSON), exist_ok=True)
with open(OUT_JSON, "w", encoding="utf-8") as f:
    json.dump(coco, f, ensure_ascii=False, indent=2)

print("🎯 COCO 변환 완료!")
print("📌 저장:", OUT_JSON)
print("📊 stats => 이미지:", len(coco["images"]), "어노테이션:", len(coco["annotations"]))
