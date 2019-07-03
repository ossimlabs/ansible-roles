To access your instance:
========================

1. Open an SSH client. (find out how to connect using [PuTTY](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html?icmpid=docs_ec2_console))
2. Locate your private key file (example-key.pem). The wizard automatically detects the key you used to launch the instance.
3. Your key must not be publicly viewable for SSH to work. Use this command if needed:
    `chmod 400 your-key.pem`
4. Connect to your instance using its Public DNS:
sample DNS: ec2-11-123-456-789.compute-1.amazonaws.com

Examples:
---------
*SSH commands for each ec2 you create will be appended below this line.*

