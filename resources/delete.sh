echo "Member Deploy Start!!"
kubectl delete -f member/member.yaml
kubectl delete -f member/member-db.yaml
kubectl delete -f member/member-cm.yaml
kubectl delete -f member/ns-member.yaml

echo "Pedeleteance Deploy Start!!"

kubectl delete -f performance/performance-deploy.yaml
kubectl delete -f performance/performance-db.yaml
kubectl delete -f performance/performance-redis.yaml
kubectl delete -f performance/performance-svc.yaml
kubectl delete -f performance/performance-configmap.yaml
kubectl delete -f performance/performance-secret.yaml
kubectl delete -f performance/ns-performance.yaml

echo "Reservation Deploy Start!!"

kubectl delete -f reservation/reservation-deploy.yaml
kubectl delete -f reservation/reservation-db.yaml
kubectl delete -f reservation/ns-reservation.yaml

echo "Front deploy Start!!"
kubectl delete -f front/ticketaka-front-cm.yaml
kubectl delete -f front/ticketaka-front-deploy.yaml
kubectl delete -f front/ticketaka-front-secret.yaml
kubectl delete -f front/ticketaka-front-svc.yaml
kubectl delete -f front/ns-ticketaka-front.yaml