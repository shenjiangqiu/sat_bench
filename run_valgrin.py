#!/usr/bin/python3
import os
import sys
import subprocess
group=int(sys.argv[1])
files=os.listdir("./cnfs")

start=(group-1)*10
end=(group)*10

if(start<=len(files)):
    print("ok")
else:
    print("out of range!")
    exit(-1)

benchs=files[start:end]
print(benchs)
for bench in benchs:
    run_string="valgrind --tool=cachegrind --cachegrind-out-file=outs/cache/"+bench+".out.cache --I1=32768,8,64 --D1=32768,8,64"+" "+" ./glucose_release"+" ./cnfs/"+bench+" 2>&1 |tail -n 2000 >outs/glu/"+bench+"_glu.out"
    print(run_string)
    subprocess.Popen(args=run_string,shell=True)
    pass


