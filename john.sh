#!/data/data/com.termux/files/usr/bin/bash
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
LIGHTGREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHTBLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Checking if System is updated or not ${NC}"
cd;pkg update -y
echo -e "${ORANGE}Installing dependencies${NC}"
pkg install git clang perl build-essential make -y
echo -e "${ORANGE}Started cloning John-the-Ripper${NC}"
git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john
echo -e "${BLUE}Navigating to the Configuration folder${NC}"
cd john/src/
clear
echo -e "${LIGHTBLUE}
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
     	    |J|O|H|N|  |i|n|  |T|e|r|m|u|x|
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
              |b|y| |BHARTIYA HACKER|
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
${NC}"
echo -e "${ORANGE}Started configuration, It may took some time${NC}"
sleep 0.1
echo -e "${ORANGE}Configuring core engine, please wait ...${NC}"
./configure
clear
echo -e "${ORANGE}Configuration Completed. Now starting final proccess it will took approximately 5-10 min"
echo -e "${LIGHTRED}Started final process... please wait...${NC}"
make -s clean && make -sj4
cd ../../
echo -e "${RED}Process completed (~_*) : You can check it by giving the following command ${LIGHTBLUE}./john/run/john --help${NC}"
