FROM python:3.7.5

COPY setup.py /social-graph-research/
COPY requirements.txt /social-graph-research/
COPY src/ /social-graph-research/src/

RUN find . | grep -E "(__pycache__|\.pyc$)" | xargs rm -rf
RUN pip install -U -r skeleton/requirements.txt
RUN pip install social-graph-research/.
