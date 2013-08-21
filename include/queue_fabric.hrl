-ifndef(queue_fabric_hrl).
-define(queue_fabric_hrl, defined).

-define(JUST_CONTROL_Q, <<"pmm.just.control">>).
-define(JUST_GTW_Q_PREFIX, <<"pmm.just.gateway">>).
-define(RECEIPT_SMS_Q, <<"pmm.receipt.sms">>).
-define(RESPONSE_SMS_Q, <<"pmm.response.sms">>).
-define(INCOMING_SMS_Q, <<"pmm.incoming.sms">>).

-define(FUNNEL_AUTH_Q, <<"pmm.funnel_auth">>).
-define(FUNNEL_BATCHES_Q, <<"pmm.funnel_batches">>).
-define(FUNNEL_EVENTS_Q, <<"pmm.funnel_events">>).
-define(FUNNEL_CONTROL_Q, <<"pmm.funnel.server_control">>).
-define(FUNNEL_NODE_Q_PREFIX, <<"pmm.funnel.nodes">>).

-define(K1API_AUTH_REQ_Q, <<"pmm.http.auth_request">>).
-define(K1API_AUTH_RESP_Q, <<"pmm.k1api.auth_response">>).
-define(K1API_DELIVERY_STATUS_REQ_Q, <<"pmm.http.delivery_status_request">>).
-define(K1API_DELIVERY_STATUS_RESP_Q, <<"pmm.k1api.delivery_status_response">>).
-define(K1API_INCOMING_Q, <<"pmm.k1api.incoming">>).
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
