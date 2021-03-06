x=0
numblocks=$1
firstblockheight=$(($numblocks - 1))
blockheight=`bitcoin-cli getblockcount`
i=$(( $blockheight - $firstblockheight))

while [ $i -le "$blockheight" ]

do

	for j in `bitcoin-cli getblockstats $i`
	do stat+=("$j")
	done

	for k in `bitcoin-cli getblockheader ${stat[8]:1:-2}`
	do header+=("$k")
	done

	if [[ "${header[10]: -3:1}" = 4 ]]; then
	x=$(( $x + 1 ))
	fi

	i=$(( $i + 1 ))

	unset stat
	unset header
done
echo "$(( $x * 100 / $numblocks ))% of last $numblocks blocks are signalling for Taproot activation"

