#Image Alpine
FROM rabbitmq:3-management

#Mise en place de RabbitMQ
RUN rabbitmqctl start_app
RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmqctl add_user host host
RUN rabbitmqctl set_user_tags host administrator
