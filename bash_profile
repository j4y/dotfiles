# .bash_profile
# this file mostly for path and environment variable setup
# Get the aliases and functions, color settings, etc

export CLICOLOR=1
export LSCOLORS=cxfxexexDxexexDxDxcxcx

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

# Another Neat Tool
export ANT_HOME="/usr/share/java/ant-1.8.2"
if [ -e $ANT_HOME ]; then
	export PATH=${ANT_HOME}/bin:$PATH
	#export ANT_OPTS=-Dbuild.sysclasspath=ignore ant
fi

# Java
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"

# Grails
export GRAILS_HOME=/usr/share/java/grails
export GRAILS_OPTS="-server -XX:+UseCodeCacheFlushing -XX:MaxInlineLevel=15 -Xmn3000M -Xms4000M -Xmx4000M -XX:NewRatio=1 -noverify -XX:PermSize=256m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8"
export PATH=$GRAILS_HOME/bin:$PATH

# Groovy
export GROOVY_HOME=/usr/share/java/groovy
export PATH=$GROOVY_HOME/bin:$PATH

# Tomcat
export CATALINA_HOME=/Library/Tomcat

# Oracle
#export ORACLE_HOME=/Users/oracle/oracle/product/10.2.0/db_1
#if [ -e $ORACLE_HOME ]; then
	#export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib
	#export ORACLE_SID=orcl
	#export ORACLE_BASE=$HOME
	#export PATH=$PATH:$ORACLE_HOME/bin
#fi

# Flash log
alias fl='tail -F ${HOME}/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'

# Python lib
if [ -z $PYTHONPATH ]; then
	export PYTHONPATH="$HOME/Code/web/lib/python:/usr/local/lib/python2.7/site-packages"
else
	export PYTHONPATH="$HOME/Code/web/lib/python:/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
fi

# Source control
export SVN_EDITOR=vi

# Misc
export ARCHFLAGS="-arch x86_64"
export DISPLAY=:0.0
umask 022
ulimit -Hn 65536
ulimit -Sn 65536

# AWS configuration
export AWS_ACCESS_KEY_ID="$(aws configure get aws_access_key_id)"
export AWS_SECRET_ACCESS_KEY="$(aws configure get aws_secret_access_key)"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(zoxide init bash)"


eval "$(mise activate bash)"
