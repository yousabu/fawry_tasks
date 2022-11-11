#!/bin/python3
import yaml
import json
import ast

# Load Yaml And Convert To Json
with open('docker-compose.yaml', 'r') as file:
    configuration = yaml.safe_load(file)
with open('docker-compose.json', 'w') as json_file:
    json.dump(configuration, json_file)
# ast to convert string  to dict
output =  ast.literal_eval(json.dumps(json.load(open('docker-compose.json')), indent=2))


all_services = output["services"]
for service_name in all_services:
        service=all_services[service_name]
        for key in service:
            if(key=="build"):
                print("the service" + service_name + "build locally 😀")
            elif(key=="image"):
                print( service[key] +" docker image")
                value= service[key]
                new_value = input("Do you need to change image ❓❗ ")
                if(new_value==""):
                    print("no value to change with ⛔")
                elif(new_value.format.__str__):
                    service[key]=new_value
                    print("Done✅")
                else:
                    print("value not correct")
            elif(key=="ports"):
                print("the service "+ service_name + " using run on port "+ str(service[key]))


# Final Product
print("After Updated:\n")
print(output)
# Save output Back To Yaml
with open("compose_updated.yaml", 'w') as cupdate:
    yaml.dump(output,cupdate)


