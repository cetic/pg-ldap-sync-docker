FROM debian:buster-slim
RUN set -ex; \
    apt-get update -y; \
    apt upgrade -y; \
    apt install -y   python3 \
        python3-ldap \
        python3-pip \
        python3-psycopg2 \
        python3-setuptools \
        python3-yaml \
        ruby \
        libpq-dev \
        gcc \
        ruby-dev \
        rubygems \
        gem \
        make; \
        gem install pg-ldap-sync; \
        :

ENTRYPOINT ["pg_ldap_sync","-c"]