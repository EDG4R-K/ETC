#아파치 2.4.39 업데이트 진행 스크립트 

1. 첨부된 파일 Apache_patch.tar.gz을 /tmp 경로에 저장한다

2. 해당 파일의 압축을 해제한 후 update.sh 실행

3. 스크립트가 동작하면서 apache 버전 업데이트가 진행된다

4. 설치 된 apache 버전은 /usr/local/apache2/bin/httpd -v 명령어로 확인 가능하다

#스크립트 에러 발생시 대처 방안

1. 에러메세지 - APR 버전이 1.3.9 버전입니다. 1.4.0 이상 버전이 필요합니다. 
- 기존 설치된 APR로 인해 신규 APR을 잡지 못하는 것이 원인
- 기존에 설치된 APR을 전부 삭제해야 함

2. 에러메세지 - APR-util 설치 중 APR을 찾을 수 없다는 문구 출력
- update.sh에서 아파치 컴파일 부분 중 ./configure 옵션에 --with-included-apr을 넣어줌 
- 수동 설치시 apr-util 컴파일시 ./configure --with-apr=apr설치경로


