#!/usr/bin/env bash

CARGO_DAEMON_WEBAPP_VERSION=$(mvn help:evaluate -Dexpression=cargo-maven2-plugin.version | grep -v '^\[')
if test ! -f $HOME/cargo-daemon/cargo-daemon-webapp-${CARGO_DAEMON_WEBAPP_VERSION}.war ; then
    mvn dependency:copy -Dartifact=org.codehaus.cargo:cargo-daemon-webapp:${CARGO_DAEMON_WEBAPP_VERSION}:war -DoutputDirectory=$HOME/cargo-daemon/.
fi
java -jar $HOME/cargo-daemon/cargo-daemon-webapp-${CARGO_DAEMON_WEBAPP_VERSION}.war &
