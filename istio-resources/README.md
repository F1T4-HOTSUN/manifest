# Istioctl 설치

> 참고 : https://istio.io/latest/docs/setup/getting-started/

```bash
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.24.2
export PATH=$PWD/bin:$PATH
```


```bash
istioctl install -f <파일명>
```

- Sidecar Injection 활성화
```bash
kubectl label namespace default istio-injection=enabled
```

