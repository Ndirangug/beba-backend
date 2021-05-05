# Beba Fleet Management System

_Beba_ is the swahili word for 'carry' or 'transport'.This is the backend for a concept fleet management system. It is a grpc service built with go.
The grpc service runs CRUD operations against a postgresql database.
  
## Technologies Used 
- Golang
- GRPC
- [GRPC Web Proxy](https://github.com/improbable-eng/grpc-web/tree/master/go/grpcwebproxy) to make the service compatible with the frontend ([https://github.com/ndirangug/beba-frontend](https://github.com/ndirangug/beba-frontend)) a Vuejs web app.
- Docker was  used to continerize the application and deploy it to Google Cloud Run.
- Makfile was used to automate some repetitive tasks on local dev environement
- A php script was used as a proxy to a payment api [Ipay Africa](https://ipayafrica.com/api/)

## Cloud Deployment
The Go grpc service, grpcwebproxy and php payment proxy are each deployed to a Google Cloud Run instance. A Dockerfile exists for each of them and a CI pipeline has been setup with Google Cloud Build
### Test the grpc service on cloud run
The [grpcurl](https://github.com/fullstorydev/grpcurl) tool may be used to send requests to the hosted grpc service on cloud run
```bash
# server reflection
$ grpcurl  beba-grpc-p2gh3d44pq-uc.a.run.app:443 list

# example get a stream of all drivers
$ grpcurl -d '{}'  beba-grpc-p2gh3d44pq-uc.a.run.app:443 beba_backend.BebaBackend.GetDrivers
```
The [grpui](https://github.com/fullstorydev/grpcurl) tool may also be used to graphicly explore the service and play with it
```bash
$ grpcui  beba-grpc-p2gh3d44pq-uc.a.run.app:443 
```



## Test on localhost
### Prerequsites
- Go 1.15
- Postgresql 13
- [GRPC Web Proxy](https://github.com/improbable-eng/grpc-web/tree/master/go/grpcwebproxy)
- Nginx + php7.4 _(Configured to expose the php script in the php folder on port 7000)_

### Run Server

```bash
# Setup Database locally
$ make migrate
$ make seed

# start the grpc service
$ make serve
```

