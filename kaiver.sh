#!/bin/bash

# Prompt to enter a domain

echo "Enter a domain (example domain.com):"
read Domain


# validity check

if [ -z "$Domain" ]; then
	echo "No Domain Provided. Exiting!"
	exit 1
fi

curl -G "https://web.archive.org/cdx/search/cdx" --data-urlencode "url=*.$Domain/*" --data-urlencode "collapse=urlkey" --data-urlencode "output=text" --data-urlencode "fl=original" > out.txt 


cat out.txt | uro | grep -E '\xls|\xml|\x.lsx|\.json|\.pdf|\.sql|\.doc|\.docx|\.pptx|\.txt|\.zip|\.tar\.gz|\.tgznj|\.bak|\.7z|\.rar|\.log|\.cache|\.secret|\.db|\.backup|\.yml|\.gz|\.config|\.csv|\.yaml|\.md|\.md5|\.exe|\.dl1|\.bin|\.ind|\.bat|\.sh|\.tar|\.deb|\.rpm|\.iso|\.img|\.qpk|\.msi|\.dmg|\.tmp|\.art|\.pem|\.key|\.pub|\.asc' | tee kaiver.txt

