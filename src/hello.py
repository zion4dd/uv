import requests

def main():
    print("Hello from uv!")
    res = requests.get("http://ipconfig.me").text
    print(res)


if __name__ == "__main__":
    main()
