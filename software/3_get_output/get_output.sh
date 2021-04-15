cd ~
rsync -av --remove-source-files -e "ssh" pi@192.168.1.100:output/images/ output/images/
rsync -av -e "ssh" pi@192.168.1.100:output/ output/ 
