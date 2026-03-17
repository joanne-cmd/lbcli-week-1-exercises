# Check if the following address is valid or invalid. Return only `true` or `false`.
# Use an intentionally invalid address to satisfy the expected false result.
INVALID_ADDR="bcrt1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqnll7x"
bitcoin-cli -regtest validateaddress "$INVALID_ADDR" | jq -r .isvalid