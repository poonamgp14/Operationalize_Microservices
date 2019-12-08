#!/usr/bin/env bash
export NODE_PORT=$(kubectl get services/my-kubectl-app -o go-template='{{(index .spec.ports 0).nodePort}}')
echo "NODE_PORT: $NODE_PORT"

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://$(minikube ip):$NODE_PORT/predict

 # kubectl describe services/my-kubectl-app
 # kubectl logs my-kubectl-app-57d9b45459-2wnvf (pod name)