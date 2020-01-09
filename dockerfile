#Image RabbitMQ
FROM rabbitmq:3-management

#RUN rabbitmqctl start_app
RUN rabbitmq-plugins enable rabbitmq_management
