#! /bin/bash/
# For unix sytems with nmap installed.

echo "Enter first octet of IP address: "
read FirstOctet

echo "Enter last octet of IP address: "
read LastOctet

echo "Enter port number: "
read PortNumber

nmap -sT $FirstOctet-$LastOctet -p $PortNumber >/dev/null -oG FullPortReport

cat FullPortReport | grep open > OpenPortReport

cat OpenPortReport