if [ -z ${GH_TOKEN+x} ]; then
	echo 'GH Personal Access Token (GH_TOKEN) should be set first.'
	exit 1
fi

echo Everything is good to go...
# echo GH_TOKEN is: $GH_TOKEN

echo Creating repos.json file...
rm -f repos.json
touch repos.json

echo Saving response data to repos.json file...
curl --silent -H "Accept: application/json" --user szabikr:$GH_TOKEN https://api.github.com/users/szabikr/repos?per_page=100 >> repos.json

echo In order to see the results, open repos.json file.
