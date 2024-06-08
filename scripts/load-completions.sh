#!/bin/bash

complete -C /usr/local/bin/aws_completer aws
complete -C /usr/bin/terraform terraform
. <(/usr/bin/kubectl completion bash)
