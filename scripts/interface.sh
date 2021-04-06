#!/bin/bash

echo "Entrez le nom de l'interface: "
read nom_interface
echo ip link add $nom_interface type veth peer name $nom_interface
