touch ./files/questions.json
echo '[' > ./files/questions.json
jq '.[].file' ./files/list.json -r | while read -r file; do echo | cat $file >> ./files/questions.json; echo ',' >> ./files/questions.json; done #https://stackoverflow.com/questions/68121082/how-to-iterate-over-json-array-with-jq
sed -i '$ s/.$//' ./files/questions.json #erase last char (a trailing comma here) https://stackoverflow.com/questions/27305177/how-can-i-remove-the-last-non-newline-character-of-a-file-in-unix
echo ']' >> ./files/questions.json