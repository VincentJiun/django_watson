# Python 物件導向(OOP)

# self ==> 物件本身
class Clothes:
    def water(self):
        print("防潑水")

    def change_color(self, color):
        self.color = color


if __name__ == "__main__":
    c1 = Clothes() # 產生一個Clothes的物件
    c2 = Clothes() 

    c1.water()
    c1.change_color('white')
    c2.change_color('blue')

    print('c1物件的顏色:',c1.color)
    print('c2物件的顏色:',c2.color)
