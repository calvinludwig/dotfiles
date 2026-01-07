function aws-ec2-list
    aws ec2 describe-instances \
        --query 'Reservations[*].Instances[*].[Tags[?Key==`Name`].Value|[0],InstanceId,State.Name,InstanceType,PublicIpAddress,PrivateIpAddress,LaunchTime]' \
        --output table
end
