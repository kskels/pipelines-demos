tkn pipeline start build-and-deploy-spring-app \
    -w name=shared-workspace,volumeClaimTemplateFile=02_persistent_volume_claim.yaml \
    -w name=maven-settings,emptyDir="" \
    -p deployment-name=rest-http-example \
    -p git-url=https://gitea.apps.ocp4.kskels.com/demos/rest-http-example.git \
    -p IMAGE=docker.apps.ocp4.kskels.com/pipelines-demos/rest-http-example
