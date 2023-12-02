#!/bin/bash
# A simple install script for cpuminer-opt on Ubuntu 18.04
# This script is not endorsed by the cpuminer-opt developers and may not work for your system
# Use it at your own risk and always check the official documentation and the source code

# Install the dependencies
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev

# Clone the cpuminer-opt repository
git clone https://github.com/JayDDee/cpuminer-opt.git

# Enter the cpuminer-opt directory
cd cpuminer-opt

# Build the program
./build.sh

# Run the program with the desired algorithm and pool
# Example: ./cpuminer -a yescrypt -o stratum+tcp://yescrypt.mine.zpool.ca:6233 -u <username> -p <password>
# You can find the list of supported algorithms in the README.md file
