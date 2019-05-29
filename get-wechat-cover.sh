#!/bin/bash
# echo "Please enter wechat post link:"
# read post_url
echo -e "Fetching post document...\n"
pic_url=`curl $1 | grep 'msg_cdn_url' | awk -F '"' '{print $2}'`
echo -e "\nCover jpg url is: $pic_url"
echo -e "Fetching cover jpg...\n"
curl $pic_url --output ./cover.jpg
echo -e "\nCover jpg saved"
