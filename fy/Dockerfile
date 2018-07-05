FROM python:3.6.6

COPY ./requirements.txt ./
RUN pip install  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r requirements.txt  \
    && rm requirements.txt

