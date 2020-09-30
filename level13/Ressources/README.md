J'affiche le binaire avec `nm -u level13` et je constate qu'il utilise getuid.

En l'executant on me dis qu'il faut avoir le uid a 4242.

Il me reste plus qu'a faire une librairie avec une fonction getuid modifié et l'injecté avec LD_PRELOAD.

J'execute le binaire avec gdb et le token apparait.
