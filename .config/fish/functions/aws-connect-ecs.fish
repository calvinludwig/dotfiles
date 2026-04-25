function aws-connect-ecs
    set -l task $argv[1]
    set -l container (aws ecs describe-tasks --cluster smartfleet-production --tasks $task --region us-east-1 --query 'tasks[0].containers[?!starts_with(name, `aws-`)].name | [0]' --output text)
    echo "Connecting to container: $container"
    aws ecs execute-command --cluster smartfleet-production --task $task --container $container --interactive --command /bin/bash --region us-east-1
end
