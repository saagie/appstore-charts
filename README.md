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

puis : helm install appstore-charts/{nom de du chart}

(pour tester sur minikube) minikube service {nom du chart}
