-ifndef(queue_fabric_hrl).
-define(queue_fabric_hrl, defined).

%% to avoid connection/user kelly's and rabbitMQ's records conflict
%% use tuple below
	%% {'queue.declare',
	%% 0, %% ticket
	%% <<"">>, %% queue
	%% false, %% passive
	%% false, %% durable
	%% false, %% exclusive
	%% false, %% auto_delete
	%% false, %% nowait
	%% []} %% arguments

-define(JUST_CONTROL_Q, <<"pmm.just.control">>).
-define(JUST_GTW_Q_PREFIX, <<"pmm.just.gateway">>).
-define(RECEIPT_SMS_Q, <<"pmm.just.receipt_sms">>).
-define(RECEIPT_SMS_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?RECEIPT_SMS_Q, %% queue
	false, %% passive
	true, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(RESPONSE_SMS_Q, <<"pmm.just.sms_response">>).
-define(RESPONSE_SMS_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?RESPONSE_SMS_Q,
	false, %% passive
	true, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(INCOMING_SMS_Q, <<"pmm.just.incoming_sms">>).
-define(INCOMING_SMS_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?INCOMING_SMS_Q,
	false, %% passive
	true, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).


-define(FUNNEL_AUTH_Q, <<"pmm.funnel.auth">>).
-define(FUNNEL_AUTH_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?FUNNEL_AUTH_Q,
	false, %% passive
	false, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(FUNNEL_BATCHES_Q, <<"pmm.funnel.sms_request">>).
-define(FUNNEL_BATCHES_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?FUNNEL_BATCHES_Q,
	false, %% passive
	true, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(FUNNEL_EVENTS_Q, <<"pmm.funnel.events">>).
-define(FUNNEL_EVENTS_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?FUNNEL_EVENTS_Q,
	false, %% passive
	true, %% durable
	false, %% exclusive
	false, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(FUNNEL_CONTROL_Q, <<"pmm.funnel.control">>).
-define(FUNNEL_CONTROL_Q_SPEC,
	{'queue.declare',
	0, %% ticket
	?FUNNEL_CONTROL_Q,
	false, %% passive
	false, %% durable
	true, %% exclusive
	true, %% auto_delete
	false, %% nowait
	[]} %% arguments
).
-define(FUNNEL_NODE_Q_PREFIX, <<"pmm.funnel.nodes">>).


-define(K1API_AUTH_REQ_Q, <<"pmm.http.auth_request">>).
-define(K1API_AUTH_RESP_Q, <<"pmm.k1api.auth_response">>).
-define(K1API_DELIVERY_STATUS_REQ_Q, <<"pmm.http.delivery_status_request">>).
-define(K1API_DELIVERY_STATUS_RESP_Q, <<"pmm.k1api.delivery_status_response">>).
-define(K1API_INCOMING_Q, <<"pmm.k1api.incoming_sms">>).
-define(K1API_RETRIEVE_SMS_REQ_Q, <<"pmm.k1api.retrieve_sms_request">>).
-define(K1API_RETRIEVE_SMS_RESP_Q, <<"pmm.k1api.retrieve_sms_response">>).
-define(K1API_SMS_REQ_Q, <<"pmm.http.sms_request">>).
-define(K1API_SUBSCRIPTION_REQ_Q, <<"pmm.http.subscription_request">>).
-define(K1API_SUBSCRIPTION_RESP_Q, <<"pmm.k1api.subscription_response">>).
-define(K1API_CONTROL_Q, <<"pmm.k1api.control">>).


-define(SOAP_CONTROL_Q, <<"pmm.soap.control">>).
-define(SOAP_INCOMING_Q, <<"pmm.soap.incoming">>).
-define(SOAP_DELIVERY_STATUS_RESP_Q, <<"pmm.soap.delivery_status_response">>).
-define(SOAP_DELIVERY_STATUS_REQ_Q, ?K1API_DELIVERY_STATUS_REQ_Q).
-define(SOAP_AUTH_RESP_Q, <<"pmm.soap.auth_response">>).
-define(SOAP_AUTH_REQ_Q, ?K1API_AUTH_REQ_Q).
-define(SOAP_SMS_REQ_Q, ?K1API_SMS_REQ_Q).

-endif. % queue_fabric_hrl
