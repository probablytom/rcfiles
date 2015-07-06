# For each directory found in bundle/, enter it and let git update it if possible.
for dir in `find bundle/. -type d`
do
	cd bundle/${dir}
	git fetch --all # Update if any new commits re available
	cd ../..
done
