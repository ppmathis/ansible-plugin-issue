FROM docker.io/library/python:3.12
ARG ANSIBLE_CORE_VERSION
WORKDIR /app

ENV VIRTUAL_ENV="/app/venv"
RUN python -m venv "${VIRTUAL_ENV}"
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

RUN pip install "ansible-core==${ANSIBLE_CORE_VERSION}"

COPY . .
CMD ["ansible-playbook", "site.yml"]
