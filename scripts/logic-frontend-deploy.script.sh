#!/bin/sh

TAG_COMMIT=$1

doctl kubernetes cluster kubeconfig save b77fdbc5-5072-41c2-9ef0-3bf9fa232053
kubectl -n logic set image deployment/logic-frontend logic-frontend="${TAG_COMMIT}"
