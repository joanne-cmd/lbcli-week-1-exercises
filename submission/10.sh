# Check if the following address is valid or invalid. Return only `true` or `false`.
# We’ll validate a known builderswallet address for regtest.
CHECK_ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" bech32)
bitcoin-cli -regtest validateaddress "$CHECK_ADDR" | jq -r .isvalid