import tensorflow as tf
print(tf.__version__)
print(tf.config.list_physical_devices('GPU'))

# 실제로 GPU 연산이 되는지 테스트
with tf.device('/GPU:0'):
    a = tf.random.normal([1000, 1000])
    b = tf.random.normal([1000, 1000])
    c = tf.matmul(a, b)
print("GPU 연산 완료 ✅")
