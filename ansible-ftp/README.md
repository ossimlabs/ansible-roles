# Ansible FTP Server Setup
This contains the necessary tasks to setup an FTP server on an AWS centos ec2. I successfully ran it on a Centos7 ec2, but it should work fine on Centos6 and 5. 
> **Note:** Currently the `ansible.cfg` and `ssh.config` files are configured to run the scripts on an ec2 registered in OpsWorks.

#### What it does:
1. Installs and configures vsftpd and ftp
2. Installs and configures FirewallD
3. Adds new users for ftp
4. Creates `/home/{{user}}/ftp/upload directories` for each new user.

## Important Stuff
Change and add users by editing the `users` variable in `roles/ftp/vars/main.yml`

Change the ip address found in both the `inventory` and `ssh.config` files to the private ip address of your ec2.

>**Note** I currently have my username for connecting through OpsWorks. However, you can change any instance of `powerusers-benjaminbuzzellimaxar` to your username if you want

## Run the `SetupFTPServer.yml` Playbook
Make sure you're in the `ansible-ftp` directory and run the following command.
```
$ ansible-playbook -i inventory SetupFTPServer.yml
```

## Test the FTP Server

First, ssh into the ec2 you just ran the scripts on, then run the following commands.
```
$ ftp <your_ec2_private_ip>
```
Then enter in a username and password from a user you created.

To test the ability to connect to your localhost, run the following.
```
$ ftp localhost
```
It should then read `Connected to localhost`
