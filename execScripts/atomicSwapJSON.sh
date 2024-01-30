#!/bin/bash

#Import Start Flag Values:
	#Establish if AtomicSwap is running
	. /home/pinodexmr/variables/atomicSwapRunning.sh


	if [ $ATOMICSWAPRUNNING -eq 1 ]
then	

#Query_all - Find all available offers
queryAll="$(curl -s -X POST http://127.0.0.1:5000 -H 'Content-Type: application/json' -d \ '{"jsonrpc":"2.0","id":"0","method":"net_queryAll","params":{"searchTime":3}}' \ | jq '[ .result.peersWithOffers[] | { "peerID": .peerID, "offerID": .offers[].offerID, "provides": .offers[].provides, "minAmount": .offers[].minAmount, "maxAmount": .offers[].maxAmount, "exchangeRate": .offers[].exchangeRate, "ethAsset": .offers[].ethAsset }]')" && echo "$queryAll" > /var/www/html/api/atomicSwap/queryAll.json

fi

