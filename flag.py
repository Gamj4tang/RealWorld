import requests, json, string, time
# format
# https://fake.io/rw/1/flag/1_7761_00000000000000000000000000000000000000000000000000000000000
# https://fake.io/rw/2/flag/2_7761_00000000000000000000000000000000000000000000000000000000000

HEADERS = {
    'authority': 'fake.io',
    'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8',
    'accept-language': 'en-US,en;q=0.5',
    'cache-control': 'max-age=0',
    'sec-ch-ua': '"Brave";v="111", "Not(A:Brand";v="8", "Chromium";v="111"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'document',
    'sec-fetch-mode': 'navigate',
    'sec-fetch-site': 'none',
    'sec-fetch-user': '?1',
    'sec-gpc': '1',
    'upgrade-insecure-requests': '1',
    'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36',
}

JSON_DATA = {
    'method': 'eth_blockNumber',
    'params': [],
    'id': 1,
    'jsonrpc': '2.0',
}

def get_block_number():
    global HEADERS, JSON_DATA
    for i in range(1, 5):
        response = requests.post(
            f'https://fake.io/rw/{str(i)}/rpc/{str(i)}_7761_00000000000000000000000000000000000000000000000000000000000',
            headers=HEADERS,
            json=JSON_DATA,
        )
        # json
        money = json.loads(response.text)
        print(money)


def check(flag_id):
    global HEADERS
    response = requests.get(
        f'https://fake.io/rw/{str(flag_id)}/flag/{str(flag_id)}_7761_00000000000000000000000000000000000000000000000000000000000',
        headers=HEADERS,
    )
    # json
    money = json.loads(response.text)
    try:
        if ((money["message"].find("rejected"))):
            print("fuck")
            return money["message"]
        else:
            print(money["message"])
            return money["message"]
    except Exception as e:
        print(money)
        return money
            

# https://fake.io/rw/1/reset/1_7761_00000000000000000000000000000000000000000000000000000000000
def reset(flag_id):
    global HEADERS
    response = requests.get(
        f'https://fake.io/rw/{str(flag_id)}/reset/{str(flag_id)}_7761_00000000000000000000000000000000000000000000000000000000000',
        headers=HEADERS,
    )
    # json
    money = json.loads(response.text)
    print(money)

def getBalance(addr, index):
    payload = {
        "method": "eth_getBalance",
        "params": [
            f"{str(addr)}",
            "latest"
        ],
        "id": 1,
        "jsonrpc": "2.0"
    }


    response = requests.post(
        f'https://fake.io/rw/{str(index)}/rpc/{str(index)}_7761_00000000000000000000000000000000000000000000000000000000000',
        headers=HEADERS,
        json=payload,
    )

    try:
        _x = json.loads(response.text)
        _eth = int((_x['result']), 16) / 1E18
        print(f"[NODE:{index}] balance: {_eth} ETH")
    except Exception as e:
        print("error")
        return
    



if __name__ == "__main__":
    # (addr , index) = input("addr, index: ").split(" ")
    addr = "0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14"
    index = input("index: ")
    getBalance(addr, index)
    # getBalance("0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14", "1")
    # _x = input("flag_id: ")
    # reset(int(_x))
    # time.sleep(1)
    
    # get_block_number()
    
    # check(int(_x))
