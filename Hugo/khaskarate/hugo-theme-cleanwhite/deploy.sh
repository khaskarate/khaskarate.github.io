#!/bin/bash

# for khaskarate.com
#aws-vault exec kha -- aws s3 rm s3://www.khaskarate.com/ --recursive
#aws-vault exec kha -- aws s3 sync . s3://www.khaskarate.com/ --delete
#aws-vault exec kha -- aws cloudfront create-invalidation --distribution-id E33684E1XBV25I --paths /

aws-vault exec kha -- aws s3 rm s3://www.khaskarate.com/ --recursive &&  aws-vault exec kha -- aws s3 sync . s3://www.khaskarate.com/ --delete && aws-vault exec kha -- aws cloudfront create-invalidation --distribution-id E33684E1XBV25I --paths /* /
