#! /bin/sh
# Tag and Category
#
for i in *; 
do if [ -d $i ];
then  echo $(basename "$i");
    VAR=$(ls $i/*.html | gawk '{if(match($0, /\/(.*html)/, f)) print f[1]}');
    VAL=$(basename "$i")/$VAR
    cp ../TEMPLATE.html  $(basename "$i").html; 
    sed -i -e "s;CONTAINER;${VAL};"  $(basename "$i").html;
fi;
done
