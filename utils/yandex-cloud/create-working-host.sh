#!/usr/bin/env bash
#
# Create new virtual machine in Yandex Cloud infrastructure.
#

yc compute instance create \
  --name de-debian-19 \
  --zone ru-central1-b \
  --platform standard-v3 \
  --network-interface subnet-id=e2lg9dqv372aab17gdn1,nat-ip-version=ipv4,security-group-ids=enp9qq7b5fn7f20erdcg \
  --create-boot-disk image-folder-id=b1g6g4do1qltb9n60447,image-id=fd843htdp8usqsiji0bb \
  --ssh-key /Users/leonidgrisenkov/.ssh/id_rsa.pub \
  --service-account-id ajedh73oau2t4qtvpuag \
  --create-disk type=network-hdd,size=50 \
  --memory 24 \
  --cores 8
