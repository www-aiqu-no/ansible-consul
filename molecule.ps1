# https://molecule.readthedocs.io/en/latest/
param (
    [string]$command  = "list",
    [string]$scenario = "default"
)

docker run --rm -it --privileged `
  -w /consul `
  -v $pwd/:/consul:ro `
  -v /var/run/docker.sock:/var/run/docker.sock:ro `
  -e IMAGE_NAME=centos `
  -e IMAGE_VESRION=7 `
  quay.io/ansible/molecule:latest `
  molecule $command --scenario-name $scenario
#  /bin/ash
