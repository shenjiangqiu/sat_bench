#!/usr/bin/python3
import os
import sys
import subprocess
group=int(sys.argv[1])
program=sys.argv[2]
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
    subprocess.Popen(args=program+" "+" ./cnfs/"+bench+" 2>&1 | tail -n 1000  > outs/glu/"+bench+"_glu.out",shell=True)
    pass


