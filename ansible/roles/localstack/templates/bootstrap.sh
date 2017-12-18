sleep 10s

su -c "docker start miroir"
su -c "aws --endpoint-url=http://localhost:4572 s3 mb s3://mamansoft-miroir/" vagrant
su -c "aws --endpoint-url=http://localhost:4569 dynamodb create-table \
    --table-name miroir \
    --attribute-definitions AttributeName=hashkey,AttributeType=S \
    --key-schema AttributeName=hashkey,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1" vagrant

