

REPO_HOME='..'

# Install Flux
for manifest in $(ls $REPO_HOME/manifests/flux/*.yaml)
do
  kubectl apply -f $manifest
done

helm upgrade -i flux fluxcd/flux \
     --namespace flux \
     -f $REPO_HOME/helm/flux/values.yml