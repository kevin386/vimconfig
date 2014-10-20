import os
import sys

path = sys.argv[1]
path = os.path.join(os.path.abspath(os.path.dirname(__file__)) , path)
print path
command = "cd " + path
print command
os.system(command)
command ="find "+path+" -name '*.py' -o -name '*.html' -o -name '*.js' > cscope.files"
print command
os.system(command)
command = "cscope -Rbkq -i cscope.files"
print command
os.system(command)
