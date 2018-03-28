#!/bin/bash

scp -i "/var/lib/jenkins/secrets/learning1.pem" ./* ubuntu@172.31.64.64:./
scp -i "/var/lib/jenkins/secrets/learning1.pem" ./* ubuntu@172.31.66.47:./
scp -i "/var/lib/jenkins/secrets/learning1.pem" ./* ubuntu@172.31.44.198:./

