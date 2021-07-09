#!/bin/sh

TAG_COMMIT=$1

doctl kubernetes cluster kubeconfig save 9d3698e0-fa57-41a7-9741-0ec5a4e0dff2
kubectl -n logic set image deployment/logic-frontend logic-frontend="${TAG_COMMIT}"
