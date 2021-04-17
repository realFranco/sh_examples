ref: https://realpython.com/intro-to-pyenv/

$: sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl


$: curl https://pyenv.run | bash

Load pyenv automatically by adding
the following to ~/.bashrc:

$: nano ~/.bashrc
# Write this 3 lines at the end of your bashrc

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Update your terminal
$: exec "$SHELL" # Or just restart your terminal

# Check all the possible versions that you can install, use a regex for filtering
$: pyenv install --list | grep " 3\.[789]"

# For this particular case install python 3.7.10
# If you don't want to see the output, remove the "-v" flag on the next command
$: pyenv install -v 3.7.10

# Installing locatations
$: ls ~/.pyenv/versions/

# You can also remove every version, (assume tha you want to remove the version x.y.z)
$: rm -rf ~/.pyenv/versions/x.y.z

# Or you can uninstall the version
$: pyenv uninstall x.y.z

# Using the python version that you want it
$: pyenv versions

# You can locate the store location of your python
$: which python
$: pyenv wich python

# If you wanto to set a python version as a global in your system
$: pyenv global x.y.z

# And then
$: pyenv versions

# Also, you can run the test suite for the python version that have
$: pyenv global x.y.z
$: python -m test

# If you want to go back to the default Python version, you can do it
$: pyenv global system
$: python -v

# You can apply a local Python version (current directory)
$: pyenv local x.y.z

## Read the section "Virtual Environments and pyenv" and continue
