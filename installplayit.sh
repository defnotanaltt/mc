sed -i -e 's/\r$//' installplayit.sh

#!/bin/bash

# Add PlayIt repository key
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null

# Add PlayIt repository source
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list

# Update package lists
sudo apt update

# Install PlayIt
sudo apt install playit -y

exit 0
