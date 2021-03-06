#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
ls  -ls
echo 'here1'
serverless config credentials --provider aws --key AKIAS7MH6ILBJGZH5JY2 --secret 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
echo 'here2'
serverless package --stage dev -p $CODEBUILD_SRC_DIR/serverless/artifacts/$env
echo 'here3'
ls -ls $CODEBUILD_SRC_DIR/serverless/artifacts/$env
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/serverless/artifacts/$env -v