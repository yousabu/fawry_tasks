# Task3:
write bash script to check if there is any new update on remote repo, if your local repo contain the last commit on the remote repo print ("Your local repo already up to date."), and if your local repo does not contain the last commit on the remote repo then print ("Your local repo is not up to date, please pull the new change on remote repo.")

## Flowchart
```mermaid
flowchart TD
    start(Start) --> get_data_from_user(Get data from user);
    get_data_from_user --> 
    check_for_updates(Check if there is any changes on remote repo);
    check_for_updates --> if_changes_exist{if there is any changes on remote repo};
    if_changes_exist-->|NO|print_updated(Print your local repo already up to date);
    if_changes_exist-->|Yes|print_not_updated(Print your local repo is not up to date, please pull the new change on remote repo.);
    print_updated-->End(End);
    print_not_updated-->End(End);
