FROM ubuntu
WORKDIR /usr
COPY task1.sh ./
RUN chmod 777 task1.sh
CMD ["sh task1.sh"]
