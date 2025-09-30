import os
import glob
import json
from collections import Counter

os.chdir(os.path.dirname(os.path.realpath(__file__)))
os.chdir('../../../hns/tags/block')

with open('all_blocks.json') as file:
    all_blocks = json.loads(file.read())['values']

for block in all_blocks:
    all_blocks[all_blocks.index(block)] = f"{block}.json"

os.chdir(os.path.dirname(os.path.realpath(__file__)))

count = 0

for current_block in glob.glob("*.json"):
    current_block = f"minecraft:{current_block}"
    if current_block not in globals()['all_blocks']:
        count += 1
        print(current_block.removesuffix('.json'))

print("\n", count, "missing in \"all_blocks.json\".")

if (Counter(all_blocks) - Counter(set(all_blocks))).keys():
    print("Duplicates found:", (Counter(all_blocks) - Counter(set(all_blocks))).keys())

print("\nDone.\n")
