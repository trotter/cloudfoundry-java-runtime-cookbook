include_attribute "java"

default[:cloudfoundry_dea][:runtimes][:java][:name]         = "java"
default[:cloudfoundry_dea][:runtimes][:java][:cookbook]     = "cloudfoundry-java-runtime"
default[:cloudfoundry_dea][:runtimes][:java][:executable]   = "java"
default[:cloudfoundry_dea][:runtimes][:java][:version]      = "1.#{node.java.jdk_version}.0"
default[:cloudfoundry_dea][:runtimes][:java][:version_flag] = "-version"

default[:cloudfoundry_dea][:runtimes][:java][:debug_env][:run]     = ['JAVA_OPTS="$JAVA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=$VCAP_DEBUG_PORT,server=y,suspend=n']
default[:cloudfoundry_dea][:runtimes][:java][:debug_env][:suspend] = ['JAVA_OPTS="$JAVA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=$VCAP_DEBUG_PORT,server=y,suspend=y"']

default[:cloudfoundry_cloud_controller][:server][:frameworks][:spring][:cookbook] = "cloudfoundry-java-runtime::spring"
