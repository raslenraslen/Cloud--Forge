kubectl create configmap prometheus-alert-rules \
  --from-file=prometheus-alert-rules.yaml \
  -n monitoring

