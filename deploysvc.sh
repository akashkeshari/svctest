#!/bin/bash
for i in {20001..30000}
do
   echo "Iteration $i"
   export INSTANCE=$i
   envsubst < svc.yaml | kubectl apply -f -
done

for i in {20001..30000}
do
   echo "Iteration $i"
   export INSTANCE=$i
   envsubst < svc.yaml | kubectl delete -f -
done