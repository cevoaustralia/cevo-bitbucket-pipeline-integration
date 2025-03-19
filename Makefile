
package:
	 cd code && npm install && cd ..
	 aws cloudformation package --template-file ./infra/infra.yaml --s3-bucket helia-bitbucket-pipeline-integration-lambda-bucket-management --output-template-file package.yaml

deploy:
	aws cloudformation create-stack --stack-name helia-bitbucket-pipeline-integration --template-body file://package.yaml --parameters file://infra/parameters.json --capabilities CAPABILITY_NAMED_IAM

update:
	aws cloudformation update-stack --stack-name helia-bitbucket-pipeline-integration --template-body file://package.yaml --parameters file://infra/parameters.json --capabilities CAPABILITY_NAMED_IAM
