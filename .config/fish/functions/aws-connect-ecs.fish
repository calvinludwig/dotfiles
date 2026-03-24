function aws-connect-ecs
    aws ecs execute-command --cluster smartfleet-production --task $argv[1] --container web --interactive --command /bin/bash --region us-east-1
end
