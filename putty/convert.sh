#!/bin/sh

# encrypt
# gpg --output testing.gpg --encrypt --recipient maulana@example testing.txt

# decrypt
echo $GPG_PASSPHRASE | gpg --output testing.txt --decrypt testing.gpg
