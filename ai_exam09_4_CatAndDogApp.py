import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
from PyQt5.QtCore import QCoreApplication
from PyQt5.QtGui import QPixmap
from tensorflow.keras.models import load_model
from PIL import Image
import numpy as np

# UI 윈도우 띄우는 코드
# uic : ui 를 class 로 만들어준다.
form_window = uic.loadUiType('./cat_and_dog.ui')[0]

# class 상속 : QWidget과 form_window의 기능 가져온다.
class Exam(QWidget, form_window):
    def __init__(self):
        # super : 조상 클래스에 접근.
        super().__init__()
        # .path : 오픈하고자 하는 파일 경로
        self.path = None
        self.setupUi(self)
        self.model = load_model('./cat_and_dog_binary_classification_0.8592000007629395.h5')
        # QT designer에서 object name 확인
        # .clicked.connect : 버튼이 클릭되면 함수로 연결
        # .pushButton : QT designer에서 object name 반드시 확인
        self.pushButton.clicked.connect(self.button_slot)

    def button_slot(self):
        # .getOpenFileName : 여는 창 이름, 여는 경로, 무슨 파일들을 보여줄 것인지 설정 -> 최종 파일 선택하면 해당 경로와 파일형식을 튜플 형태로 반환.
        self.path = QFileDialog.getOpenFileName(self, 'Open file', '/home/user14/Downloads',  'Image Files(*.jpg);;All File(*.*)')
        print(self.path)
        # QPixmap : 파일 경로를 label 에 매칭시키기 -> label에 해당 사진 띄우는 기능
        pixmap = QPixmap(self.path[0])
        # .setPixmap : pixmap 속성에 접
        self.label.setPixmap(pixmap)

        try:
            # .jpg 이미지를 직접 지정해서 테스트하기.
            img = Image.open(self.path[0])
            img = img.convert('RGB')
            img = img.resize((64, 64))
            data = np.asarray(img)
            data = data / 255
            data = data.reshape(1, 64, 64, 3)


            predict_value = self.model.predict(data)
            print(predict_value)
            if predict_value > 0.5:
                # .setText(문자열) : text 속성에 접근해 문자열 print
                self.label_2.setText('개일 확률' + str((predict_value[0][0]*100).round()) + '%')
            else:
                self.label_2.setText('고양이일 확률' + str(((1-predict_value[0][0])*100).round()) + '%')

        except:
            print('error')

app = QApplication(sys.argv)
mainWindow = Exam()
mainWindow.show()
# sys.exit : 실행되고 있는 파이썬파일 종료
# .exec_ : 어플리케이션 실행. 종료되면 특정값을 반환해서 파이썬파일 종료시킴
sys.exit(app.exec_())