
class Car:
    def __init__(self, price, color):   # 物件初始化 Initalization
        self.prince = price
        self.color = color

    def showCar(self):
        print('價格:', self.prince)
        print('顏色:', self.color)

    def go(self):
        print('0~100公尺3秒')


if __name__ == '__main__':
    c1=Car(5000, 'red')
        