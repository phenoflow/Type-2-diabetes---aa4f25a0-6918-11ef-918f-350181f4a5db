# phekb, 2024.

import sys, csv, re

codes = [{"code":"45542738","system":"ICD10CM"},{"code":"45586139","system":"ICD10CM"},{"code":"45561949","system":"ICD10CM"},{"code":"45591031","system":"ICD10CM"},{"code":"44826460","system":"ICD10CM"},{"code":"44832193","system":"ICD10CM"},{"code":"201530","system":"ICD10CM"},{"code":"4228443","system":"ICD10CM"},{"code":"36714116","system":"ICD10CM"},{"code":"45772019","system":"ICD10CM"},{"code":"45542738","system":"ICD10CM"},{"code":"45586139","system":"ICD10CM"},{"code":"45561949","system":"ICD10CM"},{"code":"45591031","system":"ICD10CM"},{"code":"44826460","system":"ICD10CM"},{"code":"44832193","system":"ICD10CM"},{"code":"201530","system":"ICD10CM"},{"code":"4228443","system":"ICD10CM"},{"code":"36714116","system":"ICD10CM"},{"code":"45772019","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-glaucoma---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-glaucoma---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-glaucoma---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
