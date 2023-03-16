echo "Member Deploy Start!!"
kubectl apply -f member/ns-member.yaml
kubectl apply -f member/member-cm.yaml
kubectl apply -f member/member-db.yaml
kubectl apply -f member/member.yaml

echo "Performance Deploy Start!!"
kubectl apply -f performance/ns-performance.yaml
kubectl apply -f performance/performance-configmap.yaml
kubectl apply -f performance/performance-db.yaml
kubectl apply -f performance/performance-deploy.yaml
kubectl apply -f performance/performance-redis.yaml
kubectl apply -f performance/performance-secret.yaml
kubectl apply -f performance/performance-svc.yaml

echo "Reservation Deploy Start!!"

kubectl apply -f reservation/ns-reservation.yaml
kubectl apply -f reservation/reservation-db.yaml
kubectl apply -f reservation/reservation-deploy.yaml
echo "Front Deploy Start!!"

kubectl apply -f front/ns-ticketaka-front.yaml
kubectl apply -f front/ticketaka-front-cm.yaml
kubectl apply -f front/ticketaka-front-deploy.yaml
kubectl apply -f front/ticketaka-front-secret.yaml
kubectl apply -f front/ticketaka-front-svc.yaml

