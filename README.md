# update

```
rm -f zed zzed zerd qed qqed fed ffed xx yy xxx yyy moe


PART=header
echo "# $PART"       > README.md
echo ""             >> README.md
echo "\`\`\`"       >> README.md
cat $PART           >> README.md
echo "\`\`\`"       >> README.md

PART=update
echo "# $PART"       > README.md
echo ""             >> README.md
echo "\`\`\`"       >> README.md
cat $PART           >> README.md
echo "\`\`\`"       >> README.md
echo ""             >> README.md
echo ""             >> README.md

cat README.md
git add README.md





git status
git add -u;git commit  -m "Update"
git push -u origin master

cp ./getheader /etc/center


```


