# Imports
from dataclasses import dataclass
from datetime import datetime
from typing import Any
import hashlib

# The Block class including a hash_block method
@dataclass
class Block:
    data: Any
    creator_id: int
    timestamp: str = datetime.utcnow().strftime("%H:%M:%S")


# Create a new block instance using some test data
new_block = Block(data="test", creator_id=0)

# Print the new_block
print(new_block)
