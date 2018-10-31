fly -t local set-pipeline -p hello_hapi -c ci/pipeline.yml
sleep 2
fly -t local unpause-pipeline -p hello_hapi
