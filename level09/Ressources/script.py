import sys

flag = ""
for i, c in enumerate(sys.argv[1]):
	flag += chr(ord(c) - i)

print(flag)
