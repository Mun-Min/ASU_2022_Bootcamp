# Creating a Blockchain Block with a DataClass

# Imports
from dataclasses import dataclass
from datetime import datetime
from typing import Any

# Creating the Block data class
@dataclass
class Block:
    data: Any
    creator_id: int
    timestamp: str = datetime.utcnow().strftime("%H:%M:%S")

# Creating a new block
new_block = Block(data="My First Block!", creator_id=42)

# Print the new block
print(new_block)
