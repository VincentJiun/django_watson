import hashlib

def MD5(pwd):
    md5 = hashlib.md5() # 建立MD5 物件
    md5.update(pwd.encode(encoding='utf-8'))
    return md5.hexdigest()  # 回傳16進制字元串

if __name__ == '__main__':
    pwd = '123456789'
    md5_pwd = MD5(pwd)
    print('MD5加密後:', md5_pwd)