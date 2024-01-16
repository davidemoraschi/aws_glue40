@rem docker run -it --name aws-sdk-glue -v %USERPROFILE%/.aws:/home/glue_user/.aws -v ./workspace:/home/glue_user/workspace/ -e AWS_PROFILE=%PROFILE_NAME% -e AWS_REGION=eu-west-1 -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 --name glue_pyspark amazon/aws-glue-libs:glue_libs_4.0.0_image_01 pyspark

docker run -it ^
    -v %USERPROFILE%/.aws:/home/glue_user/.aws ^
    -v C:\aws-glue-data\workspace:/home/glue_user/workspace ^
    -e AWS_PROFILE=aws_sdk_cpp ^
    -e DISABLE_SSL=true ^
    --rm -p 4040:4040 ^
    -p 18080:18080 ^
    --name aws_sdk-glue amazon/aws-glue-libs:glue_libs_4.0.0_image_01 

@rem pyspark
