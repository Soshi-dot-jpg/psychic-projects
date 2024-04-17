import os
import random
import time
url = "https://raw.githubusercontent.com/Soshi-dot-jpg/psychic-projects/main/mmss/exemplelist.txt"
# /\ paste your list URL here /\

rng = str(random.randint(1000000, 9999999)) + ".txt"
command = "curl " + url + " -o " + rng
os.system( command )
list = open( rng ,"r")
for a in list:
    print(a)
    os.system("curl -O " + a )
    print("\n \n")
list.close()
os.remove(rng)