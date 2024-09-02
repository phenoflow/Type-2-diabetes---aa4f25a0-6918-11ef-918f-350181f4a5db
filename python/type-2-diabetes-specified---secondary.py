# phekb, 2024.

import sys, csv, re

codes = [{"code":"1567960","system":"ICD10CM"},{"code":"45581352","system":"ICD10CM"},{"code":"45581353","system":"ICD10CM"},{"code":"1567967","system":"ICD10CM"},{"code":"45595799","system":"ICD10CM"},{"code":"35206881","system":"ICD10CM"},{"code":"1567960","system":"ICD10CM"},{"code":"45581352","system":"ICD10CM"},{"code":"45581353","system":"ICD10CM"},{"code":"1567967","system":"ICD10CM"},{"code":"45595799","system":"ICD10CM"},{"code":"35206881","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-specified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-specified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-specified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
