#!/bin/bash
for i in {1..100000}
do
   echo "Iteration $i"
   export INSTANCE=$i
   envsubst < svc.yaml | kubectl apply -f -
   sleep 5
   envsubst < svc.yaml | kubectl delete -f -
done
