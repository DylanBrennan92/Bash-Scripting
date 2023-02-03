#! /bin/bash
for x in {1..2}
do
    mkdir folder"$x"
    cd folder"$x"
    for i in {1..3}
    do
    filename="$x-$i.txt"
    touch "$filename"
        if [[ $i -eq 1 ]] || [[ $i -eq 3 ]]; then
            chmod o+rw "$filename"
            echo "rw changed for _1 or _3"  
        elif [ $i -eq 2 ]; then
            chmod ugo+rwx "$filename"
            echo "rwx changed for _2"     
        fi
    done
    cd ..
done



echo "Folders & files created and file permissions edited for files ending in _1 and _3"
echo "Job Completed"