import re

def import_text(path):
    with open(path, newline='') as inputfile:
        results = inputfile.readlines()
    return results

datetime      = import_text("datetime.txt")
density       = import_text("density.txt")
math          = import_text("math.txt")
matrix        = import_text("matrix.txt")
programming   = import_text("programming.txt")
random_number = import_text("random_number.txt")
string        = import_text("string.txt")
timeseries    = import_text("timeseries.txt")
trig          = import_text("trig.txt")

def find_functions(text_list):
    function_list = []
    for line in range(len(text_list)):
        match = re.search(r"^    ([a-zA-Z0-9]+)\(.*\)\n$", text_list[line])
        if match:
            function_list.append(match.group(1))
    return function_list

all_functions = []
all_functions.extend(find_functions(datetime))
all_functions.extend(find_functions(density))
all_functions.extend(find_functions(math))
all_functions.extend(find_functions(matrix))
all_functions.extend(find_functions(programming))
all_functions.extend(find_functions(random_number))
all_functions.extend(find_functions(string))
all_functions.extend(find_functions(timeseries))
all_functions.extend(find_functions(trig))
all_functions.extend(["mi"]) # only abbreviated function I know of

all_functions_str = "|".join(all_functions)

text_file = open("all_functions.txt", "w")
text_file.write(all_functions_str)
text_file.close()
