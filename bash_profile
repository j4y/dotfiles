export PATH=$PATH:/opt/local/bin
export PATH=/usr/local/apache2/bin:$PATH
export PATH=$PATH:/usr/local/mysql-5.1.38-osx10.5-x86_64/bin
export ANT_HOME=/landslide/apache-ant-1.8.1
export JBOSS_HOME=/landslide/jboss-5.1.0.GA
export CVSROOT=":pserver:jayp@192.168.1.10:/usr/cvs"
export CVSEDITOR=/usr/bin/vim
# TODO: remove the ANT_OPTS var and fix build.xml with includeantruntime="false"
export ANT_OPTS=-Dbuild.sysclasspath=ignore ant
export ARCHFLAGS="-arch x86_64"
export SVN_EDITOR=vi
