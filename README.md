# AtomicSwap_UI
### PiNodeXMR Interface for interacting with AthanorLabs Atomic Swap offers
 [Full PiNodeXMR project here](https://github.com/shermand100/PiNodeXMR)
 
Atomic Swaps are currently implemented on PiNodeXMR through a CLI menu, [documented here - PiNodeXMR Wiki](https://github.com/shermand100/PiNodeXMR/wiki/Atomic-Swaps). 

The hope is to develop this UI to replace the above CLI menu. Additionally, by creating this as a lightweight solution using common components it can be used by many more projects (MoneroNodo, XMR.sh etc)
Through better functionality and aethetics I hope more users/XMR ofers will become available.

![Demo](https://github.com/shermand100/AtomicSwap_UI/blob/main/Screenshot.png)

### Current progress:
Displays available offers for Eth -> XMR swap using lightweight HTML, JS and CSS.
### To do:
Add "Take Offer" button trigger swap from this UI.
This will require adding server-side functions. Discussion required.
## How it works:

Data created from - https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/execScripts/atomicSwapJSON.sh 

atomicSwapJSON.sh script can be triggered via crontab (example every 60 seconds)

Output goes to /var/www/html/api/atomicSwap/queryAll.json

jq used to format JSON ready for use by js script in HTML/atomicSwapInterface.html (js will be moved to external .js file on production - currently keeps file count low)

These offers can currently be taken on PiNodeXMR from our terminal menu. Here shown as https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/setup.sh

setup.sh loads a menu:

	 "1)" "Exit to Command line" \
  	 "2)" "System Settings" \
	 "3)" "Update Tools" \
	 "4)" "Node Tools" \
	 "5)" "Atomic Swap" \
	 "6)" "Extra Network Tools" 2>&1 >/dev/tty)

Lines 491 - 614 show current atomic swap functions to be implemented into this UI

https://github.com/shermand100/AtomicSwap_UI/blob/main/home/pinodexmr/setup.sh#L491 to 614
