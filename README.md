# appstore-charts
push :

helm package {path to chart}

mv {chart packaged} path/to/appstore-charts

helm repo index path/to/appstore-charts

push les changemens sur le dépôt


pull :

1ère fois : helm repo add appstore-charts https://saagie.github.io/appstore-charts

ensuite : helm repo update

pour voir les différents charts : helm search

puis : 
helm install [--set resources.limits.cpu=0.6 --set resources.requests.cpu=0.3 --set resources.limits.memory=3Gi --set resources.requests.memory=2Gi --set storageSize=5Gi] appstore-charts/{nom de du chart}

(pour tester sur minikube) minikube service {nom du chart}
