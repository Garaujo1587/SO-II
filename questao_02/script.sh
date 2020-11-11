#!/bin/bash

opcao="menu"

menu()

{
while true $opcao != menu
do
clear
echo "---------------------------------------"
echo "OPTIONS";
echo "1)Create a new directory";
echo "2)Delete a directory";
echo "3)Allow write access";
echo "4)Make backups of files";
echo "5)Clean up my temporary files";
echo "6)Exit";
echo "---------------------------------------"

echo "Type a option";

read opcao;

echo "OPTION: ($opcao)"

echo "---------------------------------------"

case "$opcao" in

	1)
	  echo "1-New directory: 'name' "
	  read name
	  mkdir "$name"
echo "---------------------------------------"
;;

	2)
	  echo "2-Delete directory: 'name' "
	  read name
	  rm -r "$name"
echo "---------------------------------------"
;;

	3)
	  echo "3-Type a file: "
	  read name
	  chmod +rw "$name"
echo "---------------------------------------"
;;

	4)
	  echo "4-Type a Directory: "
	  read name
	  tar -cvzf sampleArchive.tar.gz /home/sampleArchive
echo "---------------------------------------"
;;
	5)
	  echo "5-Clear temporary files"
	  rm -rf /tmp/*
echo "---------------------------------------"
;;

	6)
	  echo "6-EXIT"
	  clear;
	  exit;
echo "---------------------------------------"
;;

*)

	echo "Ivalid Option"

esac

done

}

menu
