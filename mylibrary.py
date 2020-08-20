import random
import requests


def topla(arg1, arg2) -> int:
    return int(arg1) + int(arg2)

def rastgele(start, end) -> int:
    return random.randint(int(start), int(end))

def get_cat_image():
    r = requests.get("https://api.thecatapi.com/v1/images/search")
    return r.json()[0]["url"]