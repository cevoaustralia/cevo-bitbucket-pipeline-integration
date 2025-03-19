package:
	 cd code && npm install && cd ..
	 aws cloudformation package --template-file ./infra/infra.yaml --s3-bucket helia-codepipeline-poc-lambda-bucket-nonprod-db --output-template-file package.yaml

deploy:
	aws cloudformation create-stack --stack-name CodePipeline-Bitbucket-Integration --template-body file://package.yaml --parameters file://infra/parameters.json --capabilities CAPABILITY_NAMED_IAM

update:
	aws cloudformation update-stack --stack-name CodePipeline-Bitbucket-Integration --template-body file://package.yaml --parameters file://infra/parameters.json --capabilities CAPABILITY_NAMED_IAM

