#! /bin/bash
for x in {1..2}
do
    mkdir folder"$x"
    cd folder"$x"
    for i in {1..3}
    do
    filename="$x-$i.txt"
    touch "$filename"
    done
    cd ..
    rm -rf folder"$x"
    echo "deleted folder"$x
done



echo "Folders & files created and then deleted"