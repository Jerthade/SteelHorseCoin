This readme file will also contain the whitepaper for SteelHorseCoin

SteelHorseCoin (StHC) will basically follow the primary principles originally set forth by Satoshi Nakamoto as set in his/their published white paper. https://bitcoin.org/bitcoin.pdf

Although based on original bitcoin code, it has some differences in execution and recomendations of execution.

StHC utilizes an X11 algorythm that supports masternodes. Masternodes allow some reward for supporting the network to be kept as a reward for helping the network. This is unlike some traditional coins where there is no reward for support. This should encourage longer term support.

Unlike many other masternode coins, there was not a prerelease sell of masternodes for some outrageous price that could quite easily be a warning sign of a scamcoin. 

There was also not an ICO (Initial Coin Offering). The amounts that others attempt to raise in an ICO has proven to be much more than what it actually costs to develop a working coin. This coin itself is proof of that. It took about 6 months for an individual to study, learn about, and combine the codes from all open sources and to integrate with the short term help of a professional developer.

One of the primary premises is to develop trust to potential users in it's community. This is demonstrated to not be a simple scam coin by it's lack of ICO and masternode sales.

If proof of stake to operate a masternode begins to appear to difficult to obtain, coins stored from the initial premine will be offered to prospective node operators that demonstrate to the community the willingness and ability to operate additional masternodes.

It is the hopes of the founder of the original principles of this coin and this coin, that it will be adopted by the community of bikers, and other such freedom lovers to be a medium of trade, tips, and rewards for good deeds done and respectable support of merchandise that promotes the sound of freedom!




# SteelHorseCoin

## Coin properties

Compiling OS	Ubuntu 18.04 LTS

Source branch	0.12

Algorithm	X11

Block type	Proof-of-Work

Coin name	SteelHorseCoin

Coin abbreviation	STHC

Address letter	S

Address letter testnet	T

Coin unit	Steeloshi

RPC port	7053

P2P port	7054

Block reward	101 coins

Block halving	4000000 blocks

Coin supply	810000000 coins

Premine amount	2000000 coins

Website URL	http://steelhorsecoin.com

Github URL	https://github.com/Jerthade/SteelHorseCoin.git


## Use the following instructions to compile a daemon for Ubuntu Server 18.04.

To set up the dns seed node, the parameter can be directly specified in chainparam.cpp about line 224

vSeeds.push_back(CDNSSeedData("someaddress.com or IP addy", "someaddress.com"));

### 1. Update your Ubuntu machine.

' sudo apt-get update sudo apt-get upgrade '

### 2. Install the required dependencies.

'sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev' 

'sudo apt-get install libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev unzip'

### 3.a Install Berkeley DB

'sudo add-apt-repository ppa:bitcoin/bitcoin' 

'sudo apt-get update' 

'sudo apt-get install libdb4.8-dev libdb4.8++-dev'

### or 3.b Install Berkeley DB from source code.

wget https://download.oracle.com/berkeley-db/db-4.8.30.zip

unzip db-4.8.30.zip

cd db-4.8.30

cd build_unix/

../dist/configure --prefix=/usr/local --enable-cxx 

make 

sudo make install

### 4. Now, compile our daemon

cd

git clone https://github.com/Jerthade/SteelHorseCoin.git steelhorsecoin 

Execute the following commands to compile the daemon.

cd steelhorsecoin

./autogen.sh 

./configure make

The compiling will take about 30 minutes depending on your system.

Your compiled daemon named steelhorsecoind and client tools steelhorsecoin-cli and steelhorsecoin-tx can be found in the folder “src” when compiling is finished.


## How do I cross-compile a wallet for Windows?

Use the following instructions to cross-compile a wallet for Windows using Ubuntu Server 18.04.

### Update your Ubuntu machine.

sudo apt-get update

sudo apt-get upgrade

### Install the required dependencies.

sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev

sudo apt-get install libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev unzip
 

### Build a 32-bit wallet

**Install the following dependencies.**

'sudo apt install g++-mingw-w64-i686 mingw-w64-i686-dev'

Set the default mingw32 g++ compiler option to posix.

sudo update-alternatives --config i686-w64-mingw32-g++

Build mingw32.

PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g')

cd depends

The following command will take +/- 30 minutes to complete.

make HOST=i686-w64-mingw32

cd ..

Execute the following commands to compile the wallet.

./autogen.sh

CONFIG_SITE=$PWD/depends/i686-w64-mingw32/share/config.site ./configure --prefix=/

make

The compiling will take about 60 minutes depending on your system.

Build a 64-bit wallet

Install the following dependencies.

sudo apt install g++-mingw-w64-x86-64

Set the default mingw32 g++ compiler option to posix.

sudo update-alternatives --config x86_64-w64-mingw32-g++

Build mingw32.

PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g')

cd depends

The following command will take +/- 30 minutes to complete.

make HOST=x86_64-w64-mingw32

cd ..

Execute the following commands to compile the wallet.

./autogen.sh

CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/

make

The compiling will take about 60 minutes depending on your system.

Your compiled wallet named examplecoin-qt.exe can be found in the folder “src/qt” when compiling is finished.

Client tools steelhorsecoin-cli.exe and steelhorsecoin-tx.exe can be found in the folder “src” when compiling is finished.
