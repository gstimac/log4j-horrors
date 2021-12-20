#!/bin/bash

sudo apt -qq install git yara -y 
git clone -recurse-submodules --remote-submodules https://github.com/CiscoCXSecurity/log4j.git
sudo yara -rNf log4j/yara/log4j.yara /opt
sudo yara -rNf log4j/yara/log4j.yara /var
sudo yara -rNf log4j/yara/log4j.yara /usr
sudo yara -rNf log4j/yara/log4j.yara /lib
sudo yara -rNf log4j/yara/log4j.yara /home
sudo yara -rNf log4j/yara/log4j.yara /srv
sudo yara -rNf log4j/yara/log4j.yara /tmp
