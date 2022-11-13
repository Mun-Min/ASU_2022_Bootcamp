# Imports
from dataclasses import dataclass
from datetime import datetime
from typing import Any
import hashlib
from typing import List

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


# Creating a data class called PyChain
@dataclass
class PyChain:
    chain: List[Block]

    def add_block(self, block):
        self.chain += [block]

# Initiating a new chain with the Genesis block
pychain = PyChain([Block(data="Genesis", creator_id=0)])

print(pychain)

# Access the last block in the chain
prev_block = pychain.chain[-1]

# Calculate the hash for the last block in the chain
prev_block_hash = prev_block.hash_block()

# Create a new block
new_block = Block(data="new_block", creator_id=42, prev_hash=prev_block_hash)

# Add the new block to the chain
pychain.add_block(new_block)
print(pychain)


# # Calculate the block hash using the new method
# block_hash = new_block.hash_block()

# # Print the block's hash
# print(block_hash)
