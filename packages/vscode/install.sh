#!/usr/bin/bash

curl -L --compressed "https://az764295.vo.msecnd.net/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/code_1.77.3-1681292746_amd64.deb" -o vscode.deb

sudo dpkg -i vscode.deb