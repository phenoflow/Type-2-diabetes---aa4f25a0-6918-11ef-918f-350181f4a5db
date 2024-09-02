# phekb, 2024.

import sys, csv, re

codes = [{"code":"44836914","system":"ICD10CM"},{"code":"44836915","system":"ICD10CM"},{"code":"44829878","system":"ICD10CM"},{"code":"44824072","system":"ICD10CM"},{"code":"44836916","system":"ICD10CM"},{"code":"44824073","system":"ICD10CM"},{"code":"44831045","system":"ICD10CM"},{"code":"44832194","system":"ICD10CM"},{"code":"44819500","system":"ICD10CM"},{"code":"44829879","system":"ICD10CM"},{"code":"44828795","system":"ICD10CM"},{"code":"44833366","system":"ICD10CM"},{"code":"44827616","system":"ICD10CM"},{"code":"44833367","system":"ICD10CM"},{"code":"44831047","system":"ICD10CM"},{"code":"44826461","system":"ICD10CM"},{"code":"44827617","system":"ICD10CM"},{"code":"44829882","system":"ICD10CM"},{"code":"43531597","system":"ICD10CM"},{"code":"44836914","system":"ICD10CM"},{"code":"44836915","system":"ICD10CM"},{"code":"44829878","system":"ICD10CM"},{"code":"44824072","system":"ICD10CM"},{"code":"44836916","system":"ICD10CM"},{"code":"44824073","system":"ICD10CM"},{"code":"44831045","system":"ICD10CM"},{"code":"44832194","system":"ICD10CM"},{"code":"44819500","system":"ICD10CM"},{"code":"44829879","system":"ICD10CM"},{"code":"44828795","system":"ICD10CM"},{"code":"44833366","system":"ICD10CM"},{"code":"44827616","system":"ICD10CM"},{"code":"44833367","system":"ICD10CM"},{"code":"44831047","system":"ICD10CM"},{"code":"44826461","system":"ICD10CM"},{"code":"44827617","system":"ICD10CM"},{"code":"44829882","system":"ICD10CM"},{"code":"43531597","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-controlled---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-controlled---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-controlled---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
