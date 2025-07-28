#!/bin/sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home

# https://docs.datadoghq.com/tracing/trace_collection/library_config/java/
export DD_TRACE_AGENT_PORT=8136



$JAVA_HOME/bin/java -javaagent:./dd-java-agent.jar \
 -Duser.timezone=UTC \
 -Ddd.trace.methods=com.example.payroll.EmployeeController[*] \
 -Ddd.logs.injection=true \
 -Ddd.service=payroll -Ddd.source=payroll -Ddd.env=dev -Ddd.version=11.0.3 \
 -jar payroll-11.0.3.jar