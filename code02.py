import hashlib

def SHA256(pwd):
    sha = hashlib.sha256() # 建立sha256 物件
    sha.update(pwd.encode(encoding='utf-8'))
    return sha.hexdigest()  # 回傳16進制字元串

if __name__ == '__main__':
    pwd = '123456789'
    sha_pwd = SHA256(pwd)
    print('SHA加密後:', sha_pwd)