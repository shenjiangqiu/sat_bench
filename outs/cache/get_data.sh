files=$(cat ~/files.txt)
echo $files
for file in $files; do
    if [ -f $file.out.cache ]; then
        echo "processing $file"
        cg_annotate --auto=yes $file.out.cache 2>&1 >$file.cg_annotate
    else
        echo "no file: $file"
    fi
done
