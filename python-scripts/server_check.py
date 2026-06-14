#!/usr/bin/env python3
import requests

servers = [
    "https://google.com",
    "https://github.com",
    "https://httpbin.org/status/404"
]

def check_server(url):
    try:
        response = requests.get(url, timeout=5)
        print(f"✅ {url} → {response.status_code}")
    except:
        print(f"❌ {url} → DOWN")

for server in servers:
    check_server(server)
