파일 / 진행 방법

GoogleDrive
https://drive.google.com/drive/folders/1XxjGgxcYAsrlAbofDhFWi6O2FAL39feA?usp=sharing

1. 기존 APR 제거
- 설치되어 있는 APR 버전은 1.3.9이며 아파치 2.4부턴 1.4.0 이상 버전이 필요함
- 제거를 하지 않고 상위 버전 설치시 충돌이나는 경우가 있음
yum remove apr 명령어로 APR 패키지 제거 진행

2. APR 재설치
- apr-1.7.0.tar.gz 파일 압축 해제
- 해당 폴더 진입 후 ./configure; make; make install 설치 진행

3. APR-util 설치
- APR-1.7.0 설치 후 진행해야 함
- apr-util-1.6.1.tar.gz 파일 압축 해제
- 해당 폴더 진입 후 ./configure --with-apr=/usr/local/apr (apr이 설치된 경로로 지정해야 설치가 진행됨)
- configure 완료 후 make; make install로 설치 진행

4. pcre-devel 설치 진행
- pcre-devel-7.8-7.el6.x86_64.rpm 패키지 설치 진행
- 아파치 2.4 이후 버전부터 해당 라이브러리를 사용하기에 설치해야됨

5. 아파치 설치 진행
- httpd-2.4.39.tar.gz 압축 해제
- 해당 폴더 진입 후 ./configure; make; make install; 설치 진행

6. 설치 확인
- /usr/local/apache2/bin/httpd -v 해당 커멘드로 httpd 버전 확인 가능
