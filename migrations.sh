#!/bin/bash
set -e
sleep 5s
prisma deploy
printf "\n\nGet the token bellow to able to call the api service:\n\n"
prisma token
