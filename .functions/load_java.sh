load_java() {
  export JAVA_HOME=`/usr/libexec/java_home --request`
  export PATH=$JAVA_HOME/bin:$PATH
}
