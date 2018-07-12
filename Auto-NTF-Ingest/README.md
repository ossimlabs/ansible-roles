##Using the ansible auto ingester

1. Clone this repo onto a machine that has the key to directly get into the NFS instance

2. Change the variables under hosts_vars/nfs.yml to reflect the s3 bucket/folder, NFS copy location, stager equivalent location, and add_raster endpoint to match whichever OMAR you are going to.

3. Note: the only thing that can be in the s3 bucket/folder are the NTFs for each image NOTHING ELSE

4. Adjust the hosts file if need be to change the NFS IP and user needed for your key

5. Finally, run the following command from the Auto-NTF-Ingest folder

```
ansible-playbook -i hosts ingest.yml --key-file "<path/to/instance/key>"
```