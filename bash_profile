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
# Another Neat Tool
export ANT_HOME="/usr/share/java/ant-1.8.2"
if [ -e $ANT_HOME ]; then
	export PATH=${ANT_HOME}/bin:$PATH
	#export ANT_OPTS=-Dbuild.sysclasspath=ignore ant
fi

# Java
#export JBOSS_HOME="/landslide/jboss-6.0.0.Final/"
export JAVA_HOME="/Library/Java/Home"

# Grails
export GRAILS_HOME=/usr/share/java/grails
#export GRAILS_OPTS=-Daffdex_x2.config.location=local.config.groovy
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
export PYTHONPATH="$HOME/Code/web/lib/python:/usr/local/lib/python2.7/site-packages:$PYTHONPATH"


# Source control
export CVSROOT=":pserver:${USER}@192.168.1.10:/usr/cvs"
export CVSEDITOR=/usr/bin/vim
export SVN_EDITOR=vi

# Misc
export ARCHFLAGS="-arch x86_64"
export DISPLAY=:0.0
umask 022
ulimit -Hn 65536
ulimit -Sn 65536

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
