#!/bin/bash

ifconfig enp0s3 | grep -w inet | awk '{print $2}'
