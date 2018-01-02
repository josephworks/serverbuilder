GIT_REPO="https://github.com/PaperSpigot/Paper.git"

if which git >/dev/null;
then
echo "Git found";
else
echo "Git not found";
echo "Please install git";
exit 1;
fi;

if which mvn >/dev/null;
then
echo "Maven found";
else
echo "Maven not found";
echo "Please install Maven";
exit 1;
fi;

rm -rf output
rm -rf PaperSpigot

mkdir output

git clone $GIT_REPO PaperSpigot
cd PaperSpigot
git checkout -B master origin/master
git submodule update --init 
git config user.email "paper-builder@fake.com"
git config user.name "paper-builder"
echo "=================="
echo " Applying Patches "
echo "=================="
bash applyPatches.sh
if [[ $? != 0 ]]; then
echo "Error applying spigot and paper spigot patches"
exit 1;
fi;
echo "=================="
echo "    Compiling     "
echo "=================="
mvn clean install
if [[ $? != 0 ]]; then
echo "Error compiling paper spigot"
exit 1;
fi;

cd ..

cp PaperSpigot/PaperSpigot-Server/target/paper*.jar output/paper-spigot.jar

if [ -f output/spigot.jar ];
then
echo "Paper Spigot jar crated in output";
exit 0;
else
echo "Unable to create paper spigot jar";
exit 1;
fi;