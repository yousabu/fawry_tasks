# Task2: 
write a script that do this:\
    1- read .yaml file ( ex:" docker-compose.yaml").\
    2-parse it into json format and edit image value.\
    3- then parse it back into .yaml format.

## Flowchart:
```mermaid
flowchart TD
    start(Start) --> install_pyyaml(Install pyyaml);
    install_pyyaml--> load_yml_file(Load docker-compose.yml file);
    load_yml_file --> 
    parse_yml_file(Parse docker-compose.yml file to JSON);
    parse_yml_file-->print_data(Print Image and Port);
    print_data--> End(End);
```
## How to run the script:
there is two approchs to do that:\
    1- Use pyyaml python lib.\
    2- Use jq and yq python libs.
