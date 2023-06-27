#!/usr/bin/bash

dconf load /org/gnome/terminal/ <<EOF
[legacy/profiles:]
default='43175e33-ca96-442c-bbf4-d43f7652ba44'
list=['9b7922c8-c21f-4e5c-9f02-54d4f4ab389e', '43175e33-ca96-442c-bbf4-d43f7652ba44']

[legacy/profiles:/:43175e33-ca96-442c-bbf4-d43f7652ba44]
allow-bold=true
background-color='#191917172424'
bold-color='#E0E0DEDEF4F4'
bold-color-same-as-fg=true
cursor-background-color='#E0E0DEDEF4F4'
cursor-colors-set=true
cursor-foreground-color='#191917172424'
foreground-color='#E0E0DEDEF4F4'
palette=['#262623233A3A', '#EBEB6F6F9292', '#9C9CCFCFD8D8', '#F6F6C1C17777', '#313174748F8F', '#C4C4A7A7E7E7', '#EBEBBCBCBABA', '#E0E0DEDEF4F4', '#6E6E6A6A8686', '#EBEB6F6F9292', '#9C9CCFCFD8D8', '#F6F6C1C17777', '#313174748F8F', '#C4C4A7A7E7E7', '#EBEBBCBCBABA', '#E0E0DEDEF4F4']
use-theme-background=false
use-theme-colors=false
use-theme-transparency=false
visible-name='Rosé Pine'

[legacy/profiles:/:9b7922c8-c21f-4e5c-9f02-54d4f4ab389e]
allow-bold=true
background-color='#282828282828'
bold-color='#EBEBDBDBB2B2'
bold-color-same-as-fg=true
cursor-background-color='#EBEBDBDBB2B2'
cursor-colors-set=true
cursor-foreground-color='#282828282828'
foreground-color='#EBEBDBDBB2B2'
palette=['#282828282828', '#CCCC24241D1D', '#989897971A1A', '#D7D799992121', '#454585858888', '#B1B162628686', '#68689D9D6A6A', '#A8A899998484', '#929283837474', '#FBFB49493434', '#B8B8BBBB2626', '#FAFABDBD2F2F', '#8383A5A59898', '#D3D386869B9B', '#8E8EC0C07C7C', '#EBEBDBDBB2B2']
use-theme-background=false
use-theme-colors=false
use-theme-transparency=false
visible-name='Gruvbox Dark'

[legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
audible-bell=true
EOF
