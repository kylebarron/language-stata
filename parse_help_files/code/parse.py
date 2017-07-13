import os
import re

%pwd

def import_text(path):
    with open(path, newline='') as inputfile:
        results = inputfile.readlines()
    return results

merge = import_text("../data/merge.sthlp")


class parse_sthlp(object):
    def __init__(self, file):
        self.file = file
        self.sections = None
        
    def main(self):
        self.find_section_indices()
        
    def find_section_indices(self):
        sections = {}
        prev_match = ""
        for line in range(len(self.file)):
            match = re.search(r"^\{title:([A-Z][a-z]*)\}$", self.file[line])
            if match:
                sections[match.group(1)] = [line]
                try:
                    sections[prev_match].append(line)
                except:
                    KeyError
                prev_match = match.group(1)
        return sections



        
    find_section_indices(self)



    def keep_sections(section_name, self.file):
        result = []
        for line in range(len(self.file)):
            if re.search(section_name.lower(),  )
        
    merge[hi["Title"][0]:hi["Title"][1]]






test = parse_sthlp(merge)
test.find_section_indices()
test.main()
test.find_section_indices()














test = "pt"
re.search(test, "Options")

print(hi["Title"])

















len(merge)
test = {}
print(test)
test["hi"] = "my name is kyle"


hi = find_sections(merge)
print(hi)
{'Title': [16, 24], 'Syntax': [24, 116], 'Menu': [116, 123], 'Description': [123, 156], 'Options': [156, 349], 'Examples': [349]}