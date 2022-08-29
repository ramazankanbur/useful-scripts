# web app ip restriction
az webapp config access-restriction add -g [resource_group_name] -n [app_name] --rule-name developers1 --action Allow --ip-address 111.111.111.111  --priority 1
