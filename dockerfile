#Image RabbitMQ
FROM rabbitmq:3-management

RUN rabbitmqctl start_app
RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmqctl add_user host host
RUN rabbitmqctl set_user_tags host administrator
