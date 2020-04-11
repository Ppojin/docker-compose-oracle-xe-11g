## oracle docker container 실행
- `docker run --name oracle11g -d -p 1521:1521 ppojin/oracle-xe-11g`
  - or) `docker-compose up`

## docker container 에서 oricle 접속
```
$ docker exec -it oracle11g sqlplus
```

## 접속
### 로그인 계정 정보
- user-name: system
- password: oracle

### host
- `localhost:1521`
  - or) `docker.for.mac.localhost:1521`

### url
- `jdbc:oracle:thin:@localhost:1521:xe`

참고1) [[ORACLE] DOCKER에 ORACLE 11G 설치하기](https://romeoh.tistory.com/entry/Oracle-docker%EC%97%90-Oracle-11g-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0)<br>
참고2) [[Docker on Mac] container to host 연결하기](https://jinwooe.wordpress.com/2017/07/24/docker-on-mac-container-to-host-%EC%97%B0%EA%B2%B0%ED%95%98%EA%B8%B0/)