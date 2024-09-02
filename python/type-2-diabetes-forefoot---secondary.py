# phekb, 2024.

import sys, csv, re

codes = [{"code":"45581355","system":"ICD10CM"},{"code":"43530690","system":"ICD10CM"},{"code":"45769890","system":"ICD10CM"},{"code":"45757450","system":"ICD10CM"},{"code":"36712686","system":"ICD10CM"},{"code":"45581355","system":"ICD10CM"},{"code":"43530690","system":"ICD10CM"},{"code":"45769890","system":"ICD10CM"},{"code":"45757450","system":"ICD10CM"},{"code":"36712686","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-forefoot---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-forefoot---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-forefoot---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
