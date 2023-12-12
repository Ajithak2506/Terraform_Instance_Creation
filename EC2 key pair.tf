# Create an EC2 key pair
resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC523nH9YkEZsyI37p0kfjH6L/YFi+Oci2ms6vGNy7j/rbAyCDB8zw1PyzlHrFh+4tdMgHlbXs+X0cvTxQLsv1QhshU3dYbQD98KIKnLNxG9LBX/i+Y0oVZnibpdCDhMCE026Z9yKJlQf2KROzLw/NWgagclPbyGwdpl0yVvm1r1vXBG4l5L5RSSwlEzcfmQErDQMbsTOxAircYb4bD6Qwt2kmhOs+bBLqTcRwlWBPwALJBI4lc6mJNm2EFwvBMR0U3XgZNggCu4b02lOQX2DVpJ6h222yfwrmxTsucgPlitxC1vld0Rezgcc5T6guoRqQ2yR1cH/zw0hviQl1nod1Z ajithkumar@Ajithkumar" # Replace with the path to your public key file
}


# create a new keypair using command prompt
# > ssh-keygen.exe -t rsa -b 2048 (paste this command in cmd or power shell, specify the path to save it)