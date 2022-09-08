# Nginx-Torreswebsite-Packer

**PREREQUISITES:**
- AWS CLI.
- Packer Installed.
=======
- AWS CLI
- Packer Installed
>>>>>>> eb715b845ccd3c240d713d801f2e586c9bb6eace

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
