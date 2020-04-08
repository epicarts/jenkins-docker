# jenkins-docker
젠킨스 도커로 도커 돌리기!

젠킨스를 도커로 올리고, 해당 젠킨스가 새롭게 호스트의 도커 docker.sock에 접근을 하여 도커를 올리는 방식을 시도.

'''
sudo docker run --rm --name jenkins -v jenkins_home:/var/enkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -p 50000:50000 gomi-jenkins
'''

1. jenkins 에 도커를 설치하고
2. jenkins 를 docker.sock 와 연결 (호스트와 고미의 docker GID로 인한  퍼미션 디나인 문제로 인해 실패...)


- 추후 보완해야할 듯. 쿠버네티스환경으로 젠킨스를 여러개 띄우는 방식이 아닌 이상 굳이 ... 지금은 필요 없을듯.
- 나중을 위한 깃!
