# Imports
from dataclasses import dataclass
from datetime import datetime
from typing import Any
import hashlib

# Creating a dataclass called Block
@dataclass
class Block:
    data: Any
    creator_id: int
    prev_hash: str = "0"
    timestamp: str = datetime.utcnow().strftime("%H:%M:%S")

    def hash_block(self):
        sha = hashlib.sha256()

        data = str(self.data).encode()
        sha.update(data)

        timestamp = str(self.timestamp).encode()
        sha.update(timestamp)

        prev_hash = str(self.prev_hash).encode()
        sha.update(prev_hash)

        return sha.hexdigest()


# Create a new block instance using some test data
new_block = Block(data="test", creator_id=0)

# Calculate the block hash using the new method
block_hash = new_block.hash_block()

# Print the block's hash
print(block_hash)
