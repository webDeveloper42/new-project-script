echo "What would you like to do"
echo "1.New Project"
echo " 2.Just Want Files"
read choice
if [ "$choice" -eq 1 ]; then
	cd ~/Documents/scripts/new-project-script
	echo "Name your project"
	read project
	cp -r project-sample "$project"
	mv "$project" ~/Documents/my-projects
elif [ "$choice" -eq 2 ]; then
	echo "What is the existing project name?"
	read existed_project
	cd ~/Documents/scripts/new-project-script
	echo "copying files..."
	cp -r ./project-sample/* ~/Documents/my-projects/$existed_project
		
else
	echo "Not a number try again!"
fi	

echo "Done!"