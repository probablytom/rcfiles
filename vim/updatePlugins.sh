# For each directory found in bundle/, enter it and let git update it if possible.
#for dir in `find bundle/. -type d`
#do
#	cd bundle/${dir}
#	git fetch --all # Update if any new commits re available
#	cd ../..
#done
echo "================="
echo "Updating plugins..."
echo "================="
cd bundle
for DIR in `find * -maxdepth 0 -type d ` 
do
	echo
	echo "================="
	echo "Updating " $DIR
	echo "================="
	cd $DIR
	git fetch --all
	cd ..
	echo
	echo
done
cd ..
echo
echo "================="
echo "Plugins updated"
echo "================="
echo
