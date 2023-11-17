#!/usr/bin/env sh

echo 'List of packages to update:'


echo "Check pip list"
python3 -m pip list --outdated --format=json | jq -r '.[] | "\(.name)"' | sort  > tmp_pip_list

echo "Check requirements.txt"
cat requirements.txt | grep -v '#' | awk -F== '{ print $1 }' | sort > tmp_req_list

echo '---'
join tmp_pip_list tmp_req_list | tee 2update.txt
echo '---'

rm tmp_pip_list
rm tmp_req_list

echo "Latest versions are here:"
pip list --outdated
