#! /bin/sh
for i in ./*; 
do 
    if [ -d "$i" ]; 
    then 
        echo $(basename "$i"); 
        if [ -d $i/*http* ]; 
            then  
                echo "Found.";
                echo $i/*http*/*/*.html;
                moutput=$(ls $i/*http*/*/*.html | gawk '{if(match($0, /.*(index.*\.html)/,f))  print f[1]}');
                echo $moutput $(basename "$i")/index.html;
                VAL=$(basename "$i")/index.html;
                if [ -f $moutput ]
                then
                    cp TEMPLATE.html $moutput;
                    echo $VAL $moutput;
                    sed -i -e "s;CONTAINER;${VAL};" ${moutput} ;
                    echo "REPLACED";
                else
                    echo "NO-FILE";
                fi

            else 
                echo "Not Found"; 
        fi;  
    fi; 
done > fileeeee.txt 
