#!/bin/bash
echo "Entrez une commande: "
read commande
resp=$(ldd /bin/$commande | tr -s " "  | cut -d " " -f3)

cp /bin/$commande ./vm/bin
cp --parents $resp ./vm
