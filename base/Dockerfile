FROM centos:8

RUN yum install -y wget unzip tar

RUN rpm -Uvh https://github.com/rabbitmq/erlang-rpm/releases/download/v22.2.1/erlang-22.2.1-1.el8.x86_64.rpm

RUN yum install -y erlang

RUN rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc

RUN yum install -y  https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.8.2/rabbitmq-server-3.8.2-1.el8.noarch.rpm

RUN /usr/sbin/rabbitmq-plugins list <<<'y'
RUN /usr/sbin/rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_federation rabbitmq_federation_management <<<'y'

#CMD /usr/sbin/rabbitmq-server
