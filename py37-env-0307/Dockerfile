FROM python:3.7

#  $ docker build . -t my-py-env:v2
#  $ docker push my-py-env:v2
#  $ docker run -it --rm -v /tmp/workspace/:/tmp/workspace my-py-env:v2 python /tmp/workspace/hello.py

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


RUN apt-get update --fix-missing 
RUN apt-get install -y build-essential python3-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev zlib1g-dev
RUN apt install  -y libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-3.0
RUN apt install  -y python3-gi python3-gi-cairo gir1.2-gtk-3.0

COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt
#  RUN pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD ["pip", "list"]