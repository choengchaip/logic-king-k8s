#!/bin/sh

TAG_COMMIT=$1

doctl kubernetes cluster kubeconfig save logicking-k8s
kubectl -n logic set image deployment/logic-frontend logic-frontend="${TAG_COMMIT}"
