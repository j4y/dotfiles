# .bash_profile
# this file mostly for path and environment variable setup
# Get the aliases and functions, color settings, etc

export CLICOLOR=1
export LSCOLORS=cxfxexexDxexexDxDxcxcx

export HEX_CACERTS_PATH=~/zscaler/ZscalerRootCertificate-2048-SHA256.pem
export NODE_EXTRA_CA_CERTS=/Users/jprall/zscaler/ZscalerRootCertificate-2048-SHA256.pem


if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Add XCode binaries
if [ -e /Developer/usr/bin ]; then
	export PATH=/Developer/usr/bin:$PATH
fi
# MacPorts
if [ -e /opt/local/bin ]; then
	export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
# Apache
if [ -e /opt/local/apache2 ]; then
	export PATH=/opt/local/apache2/bin:$PATH
fi
# Mysql
if [ -e /usr/local/mysql/bin ]; then
	export PATH=$PATH:/usr/local/mysql/bin
fi

# Homebrew
if [ -e /usr/local/sbin ]; then
    export PATH=$PATH:/usr/local/sbin:
fi

eval "$(/opt/homebrew/bin/brew shellenv)"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jprall/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
