echo "*** Upgrade joe, the .gitignore generator"
pip -q install --user --upgrade joe                                          
export IGNORE="python virtualenv notepadpp jetbrains visualstudio windows"
echo "*** Create .gitignore for: $IGNORE"
joe $IGNORE > .gitignore
