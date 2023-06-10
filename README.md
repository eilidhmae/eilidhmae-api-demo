## Preamble
Before following these directions, please install and configure aws-cli for EC2 creation in an AWS account.
Edit the infrastructure/variables.tf file for the appropriate values from your VPC.
The method of exposing the container is rudimentary, and only suitable for a demonstration.

!! You will need to replace the id_plotly_demo.pub with your own demo public key. Do not re-use. ;p
!! You must also update the s3 bucket configured in state.tf to your own, or change to a different terraform backend.

## Setup
1. cd container/ && make && make push 					# build the application image and submit to our repository
2. cd ../infrastructure && make plan && make apply			# build and configure the EC2 instance for this demo

## Troubleshooting
Verify the user_data script has completed: ssh ubuntu@<public-ip> && grep "finished" /var/log/cloud-init-output.log
Verify the service: kubectl get svc
Verify the tunnel is running: ps aux |grep tunnel
Verify the port-forward is running: ps aux |grep port-forward
If the port-forward is not running, check /home/ubuntu/port-forward.log, and perhaps increase the sleep value in templates/user_data.hcl.

## Results
Point your browser to http://"terraform output public_ip":8080/

