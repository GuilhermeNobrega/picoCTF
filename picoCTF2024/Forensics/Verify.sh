People keep trying to trick my players with imitation flags. 
I want to make sure they get the real thing! I'm going to provide the SHA-256 hash and a decrypt script to help you know that my flags are legitimate.
wget https://artifacts.picoctf.net/c_rhea/22/challenge.zip

The same files are accessible via SSH here:
ssh -p 64730 ctf-player@rhea.picoctf.net
Using the password 1db87a14. Accept the fingerprint with yes, and ls once connected to begin. Remember, in a shell, passwords are hidden!
Checksum: 55b983afdd9d10718f1db3983459efc5cc3f5a66841e2651041e25dec3efd46a
To decrypt the file once you've verified the hash, run ./decrypt.sh files/<file>.


file ./*

openssl aes-256-cbc -pbkdf2 -iter 100000 -d -in eai.txt -out arquivo_descriptografado.txt
picoCTF{trust_but_verify_2cdcb2de}

./eai.txt:                      openssl enc'd data with salted password

mudei o nome do arquivo

#!/bin/bash

        # Check if the user provided a file name as an argument
        if [ $# -eq 0 ]; then
            echo "Expected usage: decrypt.sh <filename>"
            exit 1
        fi

        # Store the provided filename in a variable
        file_name="$1"

        # Check if the provided argument is a file and not a folder
        if [ ! -f "/home/ctf-player/drop-in/files/$file_name" ]; then
            echo "Error: '$file_name' is not a valid file. Look inside the 'files' folder with 'ls -R'!"
            exit 1
        fi

        # If there's an error reading the file, print an error message
        if ! openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -salt -in "/home/ctf-player/drop-in/$file_name" -k picoCTF; then
            echo "Error: Failed to decrypt '$file_name'. This flag is fake! Keep looking!"
        fi

  # codigo nao estava rodando
