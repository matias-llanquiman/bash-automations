#!/bin/bash

old_passwords=("old_pass1" "old_pass2")
new_passwords=("new_pass1" "new_pass2")

for i in "${!old_passwords[@]}"; do
  find . -type f -name "*.ts" -exec sed -i "s/${old_passwords[$i]}/${new_passwords[$i]}/g" {} +
done
