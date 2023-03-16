FROM nvcr.io/nvidia/pytorch:22.10-py3

# -------------------------------------
# init
#
RUN python3 -m pip install --upgrade pip
WORKDIR /home
ENV FORCE_CUDA=1
ENV MMCV_WITH_OPS=1

RUN apt-get update
RUN apt-get install -y libgl1-mesa-dev

# -------------------------------------
# notebook
#
# RUN pip install notebook
RUN python3 -m pip install --upgrade pip # pipのアップデート
RUN python3 -m pip install jupyterlab -U

# -------------------------------------
# clearML
#
RUN pip install clearml
#
# utils
RUN pip install loguru