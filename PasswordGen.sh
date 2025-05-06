#!/bin/bash

#Simple Password Generator

echo -e  "**********  THE LIMIT LENGHT IS 64 CHARACTER  ***********\n "
read -p  "How Many Password You To Genarate : " NUM
read -p "Entetr The Length Of The Password : " PASS_LENGTH

for p in $(seq $NUM);
do
  echo -n "Generated password : "
  openssl rand -base64 48  | cut -c1-$PASS_LENGTH
done
