#!/bin/bash
#creating 1 variable for dir and project
project=$1

#display text informing user of project
echo "Hello, this is my project, '$project!'"

#create new directory
mkdir $project

#move into new dir
cd $project

#create readme and add text
touch README.md
echo "#$name  #!/bin/bash" >> README.md
#echo "#!/bin/bash" >> README.md
git add README.md
git commit -m "Add initial README.md"

#create new file for project
touch $project.sh

#initialize new Git repo
git init
git add .
git commit -m "initial commit"

#make script executable
chmod +x $project.sh
git add --chmod=+x ./$project.sh