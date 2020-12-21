

REPO_HOME='..'

# Install Flux
for manifest in $(ls $REPO_HOME/helm/flux/*.yaml)
do
  kubectl apply -f $manifest
done