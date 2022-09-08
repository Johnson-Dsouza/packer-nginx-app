# Nginx-Torreswebsite-Packer

**PREREQUISITES:**
- AWS CLI.
- Packer Installed.

**TO SETUP THE APPLICATION:**
1. Grab the source code from the GitLab repository.
1. Initialize your Packer configuration:
`packer init .`
1. Format your template:
`packer fmt .`
1. Validate your template:
`packer validate .`
1. Build Packer image:
`packer build nginx-app.pkr.hcl`
