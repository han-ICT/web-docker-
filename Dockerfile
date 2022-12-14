FROM python:3.9.7
# python 3.7.7 버전의 컨테이너 이미지를 base이미지

MAINTAINER dh lee <ske04186@gmail.com>
# Docker의 컨테이너를 생성 및 관리 하는 사람의 정보를 기입해줍니다.

WORKDIR /usr/src/app
# WORKDIR은 cd와 같은 명령으로, 작업 경로를 /usr/src/app으로 이동합니다.
# CMD에서 설정한 실행 파일이 실행될 디렉터리를 지정해주어야 한다.

COPY . .
WORKDIR ./backend
# manage.py를 실행할 수 있는 디렉토리로 이동합니다.

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install django

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
# django 서버의 포트를 8000로 지정하였으므로 Docker의 컨테이너 또한 8000 포트를 열어줍니다.