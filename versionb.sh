file_name=$@
#newFile="$file_name_"
justname="${file_name##*/}"
#echo "${justname%.*}"
fileExt="${file_name##*.}"
newFile="${justname%.*}_$(date +%y-%m-%d).$fileExt"
cp $file_name $newFile
