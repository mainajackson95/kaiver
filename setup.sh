#!/bin/bash

# Check if pipx is installed
if ! command -v pipx &> /dev/null
then
    echo "Installing pipx..."
    pip install pipx
    # Refresh PATH if necessary
    source ~/.bashrc  # Adjust for your shell
fi

# running tool through
python3 -m venv myenv
source myenv/bin/activate

# Install uro using pipx
pipx install uro
