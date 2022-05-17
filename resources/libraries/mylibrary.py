import random
import requests


def topla(arg1, arg2):
    return int(arg1) + int(arg2)


def rastgele(start, end):
    return random.randint(int(start), int(end))


def get_cat_image():
    r = requests.get("https://api.thecatapi.com/v1/images/search")
    return r.json()[0]["url"]


def get_crypto_price(pair):
    r = requests.get(f"https://api.btcturk.com/api/v2/ticker?pairSymbol={pair}TRY")
    return r.json()["data"][0]["last"]

