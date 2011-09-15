# .bash_profile
# this file mostly for path and environment variable setup

# Get the aliases and functions, color settings, etc

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Add XCode binaries
if [ -e /Developer/usr/bin ]; then
	export PATH=/Developer/usr/bin:$PATH
fi
# MacPorts
if [ -e /opt/local/bin ]; then
	export PATH=$PATH:/opt/local/bin
fi
# Apache
if [ -e /opt/local/apache2 ]; then
	export PATH=/opt/local/apache2/bin:$PATH
fi
# Mysql
if [ -e /usr/local/mysql-5.1.38-osx10.5-x86_64/bin ]; then
	export PATH=$PATH:/usr/local/mysql-5.1.38-osx10.5-x86_64/bin
fi
# Ant 
if [ -e /landslide/apache-ant-1.8.2 ]; then
	export ANT_HOME="/landslide/apache-ant-1.8.2"
	export PATH=${ANT_HOME}/bin:$PATH
	# TODO: remove the ANT_OPTS var and fix build.xml with includeantruntime="false"
	export ANT_OPTS=-Dbuild.sysclasspath=ignore ant
fi


export JBOSS_HOME=/landslide/jboss-5.1.0.GA
export JAVA_HOME=/Library/Java/Home
export CVSROOT=":pserver:${USER}@192.168.1.10:/usr/cvs"
export CVSEDITOR=/usr/bin/vim
#export ARCHFLAGS="-arch x86_64"
export SVN_EDITOR=vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # load RVM
# flashlog
alias fl='tail -F ${HOME}/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'
