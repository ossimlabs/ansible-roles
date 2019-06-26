This repo creates EC2s using ansible.
You can specify how many EC2s you want created and the configuration for creating them in group_vars/all.yml
all.yml provides a variable for the instance names, and one EC2 will be created with each given instance name.
Parameters can be easily found on an existing EC2 instance, and some examples are given in all.yml. It may be possible that not all parameters are required, depending upon the deployment. If a parameter is removed from all.yml, be sure to remove it from create_cluster.yml, too.
Addtionally, you can add a Project Code tag for charging EC2 costs in create_cluster.yml.