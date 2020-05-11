#!/bin/bash
mkdir original updated
touch original-file.sh updated-file.sh
cp original-file.sh original
cp updated-file.sh updated
cd original
mkdir original-backup
cd ..
mv original original-backup
diff original-backup updated

