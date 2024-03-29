@rem docker run -it --name aws-sdk-glue -v %USERPROFILE%/.aws:/home/glue_user/.aws -v ./workspace:/home/glue_user/workspace/ -e AWS_PROFILE=%PROFILE_NAME% -e AWS_REGION=eu-west-1 -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 --name glue_pyspark amazon/aws-glue-libs:glue_libs_4.0.0_image_01 pyspark

docker run -it ^
    -v %USERPROFILE%/.aws:/home/glue_user/.aws ^
    -v ./jupyter_workspace/:/home/glue_user/workspace/jupyter_workspace/ ^
    -e AWS_PROFILE=aws_sdk_cpp ^
    -e DISABLE_SSL=true ^
    --rm -p 4040:4040 ^
    -p 18080:18080 ^
    -p 8998:8998 ^
    -p 8888:8888 ^
    --name aws_sdk-glue amazon/aws-glue-libs:glue_libs_4.0.0_image_01 /home/glue_user/jupyter/jupyter_start.sh
