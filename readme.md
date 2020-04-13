## run oracle docker container
- `docker run --name oracle11g -d -p 1521:1521 ppojin/oracle-xe-11g`
  - or) `docker-compose up`
    ```yml
    version: '2'
    services:
       oracle11g:
          image: ppojin/oracle-xe-11g
           volumes:
              - ./oracle_data:/u01/app/oracle
              - ./sql_oracle:/sql_oracle
           ports:
              - 1521:1521
    ```

## oracle jdbc
classpath = `oracle.jdbc.OracleDriver`

## connect docker container from oracle
```
$ docker exec -it oracle11g sqlplus
```

## connection information
### url
- `jdbc:oracle:thin:@localhost:1521:xe`
### host
- `localhost:1521`
  - or) `docker.for.mac.localhost:1521`
### user
- user-name: `system`
- password: `oracle`


ref 1) [[ORACLE] DOCKER에 ORACLE 11G 설치하기](https://romeoh.tistory.com/entry/Oracle-docker%EC%97%90-Oracle-11g-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0)<br>
ref 2) [[Docker on Mac] container to host 연결하기](https://jinwooe.wordpress.com/2017/07/24/docker-on-mac-container-to-host-%EC%97%B0%EA%B2%B0%ED%95%98%EA%B8%B0/)
