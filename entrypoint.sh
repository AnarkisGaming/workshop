#!/bin/bash
cat << EOT > item.vdf
"workshopitem"
{
    "appid" "$1"
    "publishedfileid" "$2"
    "contentfolder" "$GITHUB_WORKSPACE/$3"
    "changenote" "$4"
}
EOT

steamcmd +login "$STEAM_ACCOUNT_NAME" "$STEAM_PASSWORD" +workshop_build_item "$(pwd)/item.vdf" +quit