from PIL import Image, ImageDraw, ImageFont
import cv2, numpy as np, os
from tensorflow.keras.models import load_model
from data_generator import dataset_from_folders
from configs.classes import CLASSES

model = load_model('/home/jaehyeok95/PycharmProjects/PythonProject/src/road_defect_multi_label.keras')

val_ds = dataset_from_folders(
    '/media/jaehyeok95/.../Validation/01.원천데이터/VS_G_A_F_01',
    '/media/jaehyeok95/.../Validation/02.라벨링데이터/VL_G_A_F_01',
    batch_size=1, img_size=(64,64)
)

save_dir = "./results"
os.makedirs(save_dir, exist_ok=True)

font = ImageFont.truetype("/usr/share/fonts/truetype/nanum/NanumGothic.ttf", 24)
CONF_THRESH = 0.3

for i, (img_batch, label_batch) in enumerate(val_ds):
    preds = model.predict(img_batch)
    pred_vector = preds[0]
    img_np = (img_batch[0].numpy() * 255).astype(np.uint8)
    img_np = cv2.cvtColor(img_np, cv2.COLOR_RGB2BGR)

    # --- Pillow 변환 ---
    img_pil = Image.fromarray(cv2.cvtColor(img_np, cv2.COLOR_BGR2RGB))
    draw = ImageDraw.Draw(img_pil)

    for idx, conf in enumerate(pred_vector):
        if conf > CONF_THRESH:
            label = CLASSES[idx]
            draw.text((10, 30 + idx * 25),
                      f"{label} ({conf:.2f})",
                      font=font, fill=(0, 255, 0))

    img_np = cv2.cvtColor(np.array(img_pil), cv2.COLOR_RGB2BGR)
    cv2.imwrite(os.path.join(save_dir, f"result_{i}.jpg"), img_np)

print("✅ 추론 완료! 결과는 ./results 폴더에 저장되었습니다.")
