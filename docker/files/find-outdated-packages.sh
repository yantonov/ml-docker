#!/usr/bin/env sh

echo 'List of packages to update:'


echo "Check pip list"
pip list -o --format=freeze | grep '==' | awk -F== '{ print $1 }' | sort > tmp_pip_list

echo "Check requirements.txt"
awk -F== '{ print $1 }' requirements.txt | sort > tmp_req_list

echo '---'
join tmp_pip_list tmp_req_list
echo '---'

rm tmp_pip_list
rm tmp_req_list

echo "Latest versions are here:"
pip list --outdated
