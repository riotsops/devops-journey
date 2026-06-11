servers = ["web-01", "web-02", "db-01"]

def check_server(server):
    print(f"checking {server}...")
    print(f"{server} is now online!")

for server in servers:
    check_server(server)

