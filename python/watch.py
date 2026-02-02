import serial
import time

PORT = '/dev/ttyUSB1'
BAUD_RATE = 9600


def sync_time_to_fpga():
    ser = None
    print(f"FPGA 시계 동기화 시작 (포트: {PORT})")

    while True:
        try:
            # 시리얼 객체가 없거나 닫혀있으면 새로 연결
            if ser is None or not ser.is_open:
                ser = serial.Serial(
                    port=PORT,
                    baudrate=BAUD_RATE,
                    timeout=2,
                    write_timeout=2,  # 쓰기 타임아웃 설정 (연결 끊김 감지용)
                    rtscts=False  # 하드웨어 흐름제어 비활성화 (보통 FPGA에서 미지원)
                )
                ser.reset_input_buffer()
                ser.reset_output_buffer()
                print(f"\n[{time.strftime('%H:%M:%S')}] FPGA 연결 성공")

            # 현재 시스템 시간 가져오기
            now = time.localtime()
            time_data = bytes([0xFF, now.tm_hour, now.tm_min, now.tm_sec])

            # 데이터 전송
            ser.write(time_data)
            ser.flush()  # 버퍼의 데이터를 즉시 물리적으로 전송

            print(f"\r전송 중 -> {now.tm_hour:02d}:{now.tm_min:02d}:{now.tm_sec:02d}", end="")

            time.sleep(1)

        except (serial.SerialException, serial.SerialTimeoutException) as e:
            print(f"\n[{time.strftime('%H:%M:%S')}] 연결 오류 발생: {e}")
            if ser:
                ser.close()
            ser = None
            print("5초 후 재연결을 시도합니다...")
            time.sleep(5)

        except KeyboardInterrupt:
            print("\n사용자에 의해 중단되었습니다.")
            if ser:
                ser.close()
            break


if __name__ == "__main__":
    sync_time_to_fpga()