#!/bin/bash
ls -a /home/aaron/Documents
ls -a /home/aaron/Videos
ls -a /home/aaron/Downloads
ls -a /home/aaron/Public
ls -a /home/aaron/Templates
ls -a /home/aaron/Desktop

read -p 'Do you want to delete these folders? [y/n]: ' yn
case $yn in
  [Yy]* )
      rm -r /home/aaron/Documents;
      rm -r /home/aaron/Videos;
      rm -r /home/aaron/Downloads;
      rm -r /home/aaron/Public;
      rm -r /home/aaron/Desktop;
      rm -r /home/aaron/Templates;;
  * )
      echo 'Enter "y" if you want to delete.';;
esac
