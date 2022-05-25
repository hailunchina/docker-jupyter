FROM node:latest
RUN apt-get update
RUN apt-get install -y wget python3 python3-dev python3-pip
RUN apt-get clean && apt-get autoclean
RUN ln -sf /usr/bin/pip3 /usr/bin/pip && ln -sf /usr/bin/python3 /usr/bin/python
RUN pip install --upgrade pip
RUN pip install jupyter
RUN npm install -g ijavascript
RUN npm install -g npm
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install
RUN ijsinstall
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ./entrypoint.sh
# 设置需要暴露的端口
EXPOSE 8888