-include .env




deployOnSepolia :; forge script script/Upgrades.s.sol  --rpc-url $(RPC_URL_SEPOLIA) --account $(sk_wallet) --broadcast --etherscan-api-key $(ETH_SEPOLIA_API) --verify