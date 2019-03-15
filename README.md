# SteelHorseCoin

Use the following instructions to cross-compile a wallet for Windows using Ubuntu Server 18.04.

# Update your Ubuntu machine.

sudo apt-get update 

sudo apt-get upgrade

# Install the required dependencies.

sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev 

sudo apt-get install libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev unzip

# Create a directory for the source code.

cd ~/ mkdir source_code

cd source_code

Extract the tar file.

tar -xzvf examplecoin-source.tar.gz

# Build a 32-bit wallet

Install the following dependencies.

sudo apt install g++-mingw-w64-i686 mingw-w64-i686-dev

Set the default mingw32 g++ compiler option to posix.

sudo update-alternatives --config i686-w64-mingw32-g++

Build mingw32.

PATH=$(echo "$PATH" | sed -e 's/:/mnt.*//g') cd depends

The following command will take +/- 30 minutes to complete.

make HOST=i686-w64-mingw32 cd ..

Execute the following commands to compile the wallet.

./autogen.sh CONFIG_SITE=$PWD/depends/i686-w64-mingw32/share/config.site ./configure --prefix=/ make

The compiling will take about 60 minutes depending on your system.

# Build a 64-bit wallet

Install the following dependencies.

sudo apt install g++-mingw-w64-x86-64

Set the default mingw32 g++ compiler option to posix.

sudo update-alternatives --config x86_64-w64-mingw32-g++

Build mingw32.

PATH=$(echo "$PATH" | sed -e 's/:/mnt.*//g') cd depends

The following command will take +/- 30 minutes to complete.

make HOST=x86_64-w64-mingw32 cd ..

Execute the following commands to compile the wallet.

./autogen.sh CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/ make

The compiling will take about 60 minutes depending on your system.

Your compiled wallet named steelhorsecoin-qt.exe can be found in the folder “src/qt” when compiling is finished.

Client tools steelhorsecoin-cli.exe and steelhorsecoin-tx.exe can be found in the folder “src” when compiling is finished.

# Coin properties

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

# Use the following instructions to compile a daemon for Ubuntu Server 18.04.

Update your Ubuntu machine.

sudo apt-get update sudo apt-get upgrade

Install the required dependencies.

sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev 

sudo apt-get install libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev unzip

# Install Berkeley DB

sudo add-apt-repository ppa:bitcoin/bitcoin 

sudo apt-get update 

sudo apt-get install libdb4.8-dev libdb4.8++-dev

# or Install Berkeley DB from source code.

wget https://download.oracle.com/berkeley-db/db-4.8.30.zip unzip db-4.8.30.zip cd db-4.8.30 cd build_unix/ ../dist/configure --prefix=/usr/local --enable-cxx make sudo make install

Create a directory for the source code.

cd

git clone https://github.com/Jerthade/SteelHorseCoin.git steelhorsecoin 

Execute the following commands to compile the daemon.

./autogen.sh 

./configure make

The compiling will take about 30 minutes depending on your system.

Your compiled daemon named examplecoind and client tools examplecoin-cli and examplecoin-tx can be found in the folder “src” when compiling is finished.
