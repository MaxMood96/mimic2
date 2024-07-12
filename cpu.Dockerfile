FROM tensorflow/tensorflow:1.13.1-py3

RUN mkdir /root/mimic2
COPY . /root/mimic2
WORKDIR /root/mimic2
RUN apt-get update -y && apt-get install -y llvm-8
RUN ln -s /usr/bin/llvm-config-8 /usr/bin/llvm-config
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/bin/bash" ]