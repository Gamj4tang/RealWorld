import subprocess

# commands = [
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest8.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest18.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest27.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest127.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest144.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest146.sol -vv --silent",
#     "forge test --fork-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --chain-id 2401 --match-path ./src/FairFF/FairExploitMasterTest156.sol -vv --silent",
# ]

# # deployConvertContracts = [

# # ]

# for command in commands:
#     result = subprocess.run(command.split(), capture_output=True, text=True)
#     print(result.stdout)
#     print(result.stderr)


# # forge create --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/FairFF/FairExploitMasterTest.sol:ExploitTest

# poolN = [8, 18, 27, 127, 144, 156]

# for i in poolN:
#     for _ in range(0, 2):
#         print(f"Deploying Convert{i} contract")
#         _cmx = f"forge create --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/FairFF/Convert{i}.sol:Convert{i}"
#         result = subprocess.run(_cmx.split(), capture_output=True, text=True)
#         print(result.stdout)
#         print(result.stderr)
    

# expN = [8, 18, 27, 127, 144, 146, 156]
# for i in expN:
#     print(f"Deploying Convert{i} contract")
#     _cmx = f"forge create --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 ./src/FairFF/FairExploitMasterTest{i}.sol:ExploitTest"
#     result = subprocess.run(_cmx.split(), capture_output=True, text=True)
#     print(result.stdout)
#     print(result.stderr)


# Deploying Convert8 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x401620688E2A7A41259F2c5B7784E7fC7aA48085
# Transaction hash: 0x4f5d35f8726945a281aecacf33b140bcdcb103cadd07e014cedff4f4b2d9856a


# Deploying Convert18 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x646a0151264eb17CaA72de124E0F90d93327ebd7
# Transaction hash: 0xf8809528c864d212afb6194ad19bbe72c54e6640097372174c82505dd39b46ce


# Deploying Convert27 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0xB538Cad24da3181238eFAD78339c527DEE161A5b
# Transaction hash: 0x5ff6d3e8c149c46662a03f4495001d5fb60455d09c8f4312ac03de22bb47b186


# Deploying Convert127 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0x47dE59CD7cc91D83151C760F5dD88F201FA1F754
# Transaction hash: 0x2de07c959fbbcc9a8aa45296124e7b052ddf058502da7f9815f4d8fb45c54785


# Deploying Convert144 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0xB73E072fEb4A42fd8dC74662F6747c40C271DAC2
# Transaction hash: 0x64ee3d18a6dc616d1f3be007339c052cd1b44257e7b2b761e9c538d5edbdf3c0


# Deploying Convert146 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0xf5E1847D264218AD7bf723514159D8ECb5389192
# Transaction hash: 0xb3c438aee0866dc2506dff0b10e8d4a4ddaf549824ed5496f79bc50fc89e67db


# Deploying Convert156 contract
# No files changed, compilation skipped
# Deployer: 0xc943eDB4Bb4439d65B81f2f60Bc698411e910B14
# Deployed to: 0xaE1dA1e0bB4A4D8720a40e2e625e6cDA3a5175B0
# Transaction hash: 0x9e69c9c33e48fc90ebba718c143ceee5fb01ef2b3ba3afc1f4ceffdc89872005

print("CA")
expCallN = [8, 18, 27, 127, 144, 146, 156]
ca = [
    "0x401620688E2A7A41259F2c5B7784E7fC7aA48085",
    "0x646a0151264eb17CaA72de124E0F90d93327ebd7",
    "0xB538Cad24da3181238eFAD78339c527DEE161A5b",
    "0x47dE59CD7cc91D83151C760F5dD88F201FA1F754",
    "0xB73E072fEb4A42fd8dC74662F6747c40C271DAC2",
    "0xf5E1847D264218AD7bf723514159D8ECb5389192",
    "0xaE1dA1e0bB4A4D8720a40e2e625e6cDA3a5175B0"
]
for i in ca:
    ## green color=> "called: {i}"
    print(f"\033[92m called: {i} \033[0m")

    _cmx = f'cast send --rpc-url https://fake.io/rw/2/rpc/2_7761_00000000000000000000000000000000000000000000000000000000000 --private-key 0x0000000000000000000000000000000000000000000000000000000000000 {i} testExploit()'
    # print(_cmx.split())
    result = subprocess.run(_cmx.split(), capture_output=True, text=True)
    print(result.stdout)
    print(result.stderr)
    print("\n\n\n")
