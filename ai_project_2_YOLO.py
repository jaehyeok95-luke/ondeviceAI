import os
import json

COCO_JSON = "dataset/coco_json_data/coco_G_A_F_01.json"
IMAGES_DIR = "/media/jaehyeok95/새 볼륨/060.고해상도 도로노면 이미지 데이터/3.개방데이터/1.데이터/Training/01.원천데이터/TS_G_A_F_01"
OUT_LABEL_DIR = "dataset/yolo_labels"

os.makedirs(OUT_LABEL_DIR, exist_ok=True)

with open(COCO_JSON, "r", encoding="utf-8") as f:
    coco = json.load(f)

cat_ids = [c["id"] for c in coco["categories"]]
catid_to_yolo = {cid: idx for idx, cid in enumerate(cat_ids)}

imgid_to_image = {im["id"]: im for im in coco["images"]}
anns_by_image = {}

for ann in coco["annotations"]:
    anns_by_image.setdefault(ann["image_id"], []).append(ann)

for img_id, img_info in imgid_to_image.items():
    w = img_info["width"]
    h = img_info["height"]
    file_name = img_info["file_name"]

    out_file = os.path.join(OUT_LABEL_DIR, file_name.replace(".jpg", ".txt"))

    lines = []
    for ann in anns_by_image.get(img_id, []):
        x, y, bw, bh = ann["bbox"]
        x_center = (x + bw / 2) / w
        y_center = (y + bh / 2) / h
        bw_n = bw / w
        bh_n = bh / h
        cls = catid_to_yolo[ann["category_id"]]
        lines.append(f"{cls} {x_center} {y_center} {bw_n} {bh_n}")

    with open(out_file, "w") as f:
        f.write("\n".join(lines))

print("YOLO labels saved to:", OUT_LABEL_DIR)
