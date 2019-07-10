삼성물산 DB 복사 및 덮어씌우기 소스코드

DB-SFTP.sh / DB-Sync.sh 모두 /etc/init.d/ 경로 아래에 둘 것

각각의 로그는 /tmp 경로 내 DB-Down.log / DB-Sync.log로 남음

####크론탭 미구동시 확인해야 할 것들####

1. 스크립트 / 폴더 권한 확인
2. 크론탭 경로 확인
3. iptables / 방화벽 확인
4. 디스크 용량 확인
5. sshd timeout 여부 확인
