#!/usr/bin/env bash
# Copyright (C) 2015 <pcre@gmx.de>. All Rights Reserved.
# This file is licensed under the GPLv3+. Please see COPYING for more information.


pwstore="$1"
stringsize="${#pwstore}" 

echo "uuid,group,title,url,user,password,notes"

find "$pwstore" -name "*.gpg" | while read line; do
	line="$(cut -c "$stringsize"- <<< "$line")"

	uuid="$(uuidgen)"
	user="$(sed	-e 's/\(.*\)\/\(.*\)\.gpg/\2/' <<< "$line")"

	temp="$(sed -e 's/\/*\(.*\)\/.*.gpg/\1/'  -e 's/\//;/g' <<< "$line")"
	title="$(sed -e 's/.*;\(.*\)/\1/' <<< "$temp")"
	url="$title"
	group="$(sed -e 's/\./\\./g' -e 's/;/./g' <<< "$temp")"

	temp="$(pass "$(sed -e 's/\(.*\)\.gpg/\1/' <<< "$line")")"
	password="$(head -n 1 <<< "$temp")"

	temp="$(sed -n '1!p' <<< "$temp")"
	notes="$(tr '\n' ' ' <<< "$temp")"

	echo "$uuid","$group","$title","$url","$user","$password","$notes"
done
