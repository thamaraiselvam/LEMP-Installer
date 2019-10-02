#!/bin/bash

echo -e "###### - Static code analysis - main script - ######"
shellcheck -a --color=always ./*.sh
echo -e "\n"
echo -e "###### - Static code analysis - installers - ######"
shellcheck -a --color=always ./**/*.sh

