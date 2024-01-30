# AtomicSwap_UI
## PiNodeXMR Interface for interacting with AthanorLabs Atomic Swap offers

![Demo](https://github.com/shermand100/AtomicSwap_UI/blob/main/Screenshot.png)

### Current progress:
Displays available offers for Eth -> XMR swap using lightweight HTML, JS and CSS.
### To do:
Add "Take Offer" button trigger swap from this UI

## How it works:

### Data created from - https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/execScripts/atomicSwapJSON.sh
atomicSwapJSON.sh script can be triggered via crontab (example every 60 seconds)
Output goes to /var/www/html/api/atomicSwap/queryAll.json
jq used to format JSON ready for use by js script in HTML/atomicSwapInterface.html (js will be moved to external .js file on production - currently keeps file count low)

These offers can currently be taken on PiNoddeXMR from our terminal menu. Here shown as https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/setup.sh

setup.sh loads a menu:

	 "1)" "Exit to Command line" \
  	 "2)" "System Settings" \
	 "3)" "Update Tools" \
	 "4)" "Node Tools" \
	 "5)" "Atomic Swap" \
	 "6)" "Extra Network Tools" 2>&1 >/dev/tty)

Lines 491 - 614 show current atomic swap functions to be implemented into this UI
https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/setup.sh#L491 to 614
