# Check the total amount in the wallet.

RPCADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$RPCADDR" >/dev/null
bitcoin-cli -regtest -rpcwallet=builderswallet getbalance
