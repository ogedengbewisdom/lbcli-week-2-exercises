# Created a SegWit address.
SEGWIT_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)
# Add funds to the address.
FUND_ADDRESS=$(bitcoin-cli -regtest generatetoaddress 101 "$SEGWIT_ADDRESS")
# Return only the Address
echo "$SEGWIT_ADDRESS"