# bitcoin-scripts

A curated collection of bitcoin scripts.

# taproot-signalling.sh
Bash script to calculate the percentage of recent blocks that have signalled readiness for Taproot activation.
Originally created by [Corey Edwards](https://twitter.com/InPHARMaticist/status/1395734932475957250), updated by myself to include the command line argument for the number of blocks to check.

### Requirements
- Bitcoin Core installed and running
- Should work on most versions of Linux/MacOS

### Installation
- Clone this repo: `git clone https://github.com/billygarrison/bitcoin-scripts.git`
- Switch to `bitcoin-scripts` directory: `cd bitcoin-scripts`
- Change file permission to make the script executable: `chmod +x ./taproot-signalling.sh`

### Usage
- From the command line, run the script passing in the number of blocks you'd like to check for Taproot readiness. To check the last 144 blocks, do `./taproot-signalling.sh 144`
