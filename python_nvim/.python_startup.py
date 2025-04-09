import readline
import sys
import atexit
import os

history_file = os.path.expanduser("~/.python_history_aliases")

def save_history(hfile=history_file):
    readline.write_history_file(hfile)

atexit.register(save_history)

try:
    readline.read_history_file(history_file)
except FileNotFoundError:
    pass

aliases = {}

def alias(alias_name, command):
    aliases[alias_name] = command

def pre_input_hook():
    line = readline.get_line_buffer()
    parts = line.split()
    if parts and parts[0] in aliases:
        readline.replace_line(aliases[parts[0]] + " " + " ".join(parts[1:]))
        readline.redisplay()

readline.set_pre_input_hook(pre_input_hook)

# Example of adding aliases within the interactive session:
alias("ll", "import os; print(os.listdir())")
alias("greet", "print('Hello from alias!')")
