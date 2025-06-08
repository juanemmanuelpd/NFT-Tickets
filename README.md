# NFT Tickets
## Overview 🪙
Ticket NFT, a secure and unique way to manage tickets to a concert or other event.

<img src="https://lime-causal-hare-88.mypinata.cloud/ipfs/bafybeiby747q56wujyb5myjz3eqpnri6iv6syovwk5fnsil2xznnpmkfsq" alt="NFT" width="300"/>
<img src="https://lime-causal-hare-88.mypinata.cloud/ipfs/bafybeiew4wwzowzztuvdvhowl7u7vzcwtoppv4iwnmr5ye3w6hrhzrs2om" alt="NFT" width="300"/>
<img src="https://lime-causal-hare-88.mypinata.cloud/ipfs/bafybeicy5szunidmcxr3vi3f7precfa6d35jcd2bdbjbwt34h3kqkuzneu" alt="NFT" width="300"/>
<img src="https://lime-causal-hare-88.mypinata.cloud/ipfs/bafybeicso7dv76i7y5q3ez7bbydrxc5qnepesttkexkp7f7rzbhgoykgfa" alt="NFT" width="300"/>

## Features 📃
* Mint the amount of tickets you want
* Image files remain secure thanks to the IPFS protocol
* Use the Arbitrum network to deploy the ERC721 contract, a cheap, fast, and secure network
## Technical details ⚙️
* Framework CLI -> Foundry.
* Forge version -> 1.1.0-stable.
* Solidity compiler version -> 0.8.24.
* Deployment network -> Arbitrum
## Deploying the contract 🛠️
1. Clone the GitHub repository.
2. Open Visual Studio Code (you should already have Foundry installed).
3. Select "File" > "Open Folder", select the cloned repository folder.
4. Create a new file called ".env" in your project folder.
5. In the .env file, write "PRIVATE_KEY = 0x" followed by your private key, which you'll use to pay for the NFT token deployment fees.
6. In the same .env file, write "ETHERSCAN_API_KEY" on the line below, followed by your API KEY, which you can create at https://arbiscan.io/apidashboard.
8. In the project navigation bar, open the "DeployNFTConcert.s.sol" file located in the "script" folder.
9. In the toolbar above, select "Terminal" > "New Terminal".
10. Select the "Git bash" terminal (previously installed).
11. Run the `forge build` command to compile the project.
12. Go to https://chainlist.org/ and search the Arbitrum network for a reliable RPC server address. I recommend https://arb1.arbitrum.io/rpc.
13. Run the command `forge script script/DeployNFTConcert.s.sol --rpc-url https://arb1.arbitrum.io/rpc --broadcast --verify` to deploy the script and verify it within the Arbitrum network.
14. Check the output of the terminal and copy the address of the deployed smart contract (NFTConcert).
15. Enter the address of the NFT Concert at https://arbiscan.io/ and within the "Contract" tab look for the "mint" function to mint the 4 ticket tokens (you must have Metamask or another wallet previously installed in your browser).
16. Enter your address of your wallet at https://opensea.io/ to search your  for tokens and that's it. You can now start an auction for your NFTs.
## Functions (RLNFTCollection.sol) 💻
* function mint() -> Mint and verify that only the amount of tokens required by the user is minted.
* function _baseURI() -> Sets the baseUri address in the ERC-721 contract to the one provided by the user.
* function tokenURI() -> Sets the full address of the two NFT tokens to be mined, according to the baseUri and the agreed amount of tokens.
## Functions (DeployNFTCollection.s.sol) 💻
*  function run() -> Deploys tokens on the network using the user's private key.

CODE IS LAW!
