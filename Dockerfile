FROM python:latest:3.6.6

COPY ./mysite/requirements.txt ./
RUN pip install --no-cache-dir -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r requirements.txt  \
    && rm requirements.txt
