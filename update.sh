rm -f zed zzed zerd qed qqed fed ffed xx yy xxx yyy moe

rm -f README.md
PART=header
echo "# $PART"      >> README.md
echo ""             >> README.md
echo "\`\`\`"       >> README.md
cat $PART           >> README.md
echo "\`\`\`"       >> README.md

PART=update
echo "# $PART"      >> README.md
echo ""             >> README.md
echo "\`\`\`"       >> README.md
cat $PART           >> README.md
echo "\`\`\`"       >> README.md

PART=getheader
echo "# $PART"      >> README.md
echo ""             >> README.md
echo "\`\`\`"       >> README.md
cat $PART           >> README.md
echo "\`\`\`"       >> README.md

cat README.md
git add README.md


echo "#"                      > bash.functions
echo "# bash functions"      >> bash.functions
for fn in ./*.sh; do
    echo "############################################################################################" >> bash.functions
    echo "# $fn"                 >> bash.functions
    echo "############################################################################################" >> bash.functions
    cat "$fn"                    >> bash.functions
    echo ""                      >> bash.functions
    echo ""                      >> bash.functions
done
git add bash.functions


git status
git add -u;git commit  -m "Update"
git push -u origin master

cp ./getheader       /etc/center
cp ./bash.functions  /etc/center



