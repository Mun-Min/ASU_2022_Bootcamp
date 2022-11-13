import hashlib

def hash_number(number):
    sha = hashlib.sha256()
    value = str(number).encode()
    sha.update(value)
    return sha.hexdigest()

count = 0
hash = hash_number(count)
print(f"The first hash is {hash}")

while not hash.startswith("0000"):
    count += 1
    hash = hash_number(count)

print(f"Found a hash with four zeros after {count} attempts")
print(hash)
