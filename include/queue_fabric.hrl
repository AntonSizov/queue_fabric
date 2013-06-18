-ifndef(queue_fabric_hrl).
-define(queue_fabric_hrl, defined).

-define(JUST_CONTROL_Q, <<"pmm.just.control">>).
-define(JUST_GTW_Q_PREFIX, <<"pmm.just.gateway">>).
-define(RECEIPT_SMS_Q, <<"pmm.mmwl.receipt.sms">>).
-define(RESPONSE_SMS_Q, <<"pmm.mmwl.response.sms">>).
-define(INCOMING_SMS_Q, <<"pmm.mmwl.incoming.sms">>).

-define(FUNNEL_AUTH_Q, <<"pmm.mmwl.funnel_auth">>).
-define(FUNNEL_BATCHES_Q, <<"pmm.mmwl.funnel_batches">>).
-define(FUNNEL_EVENTS_Q, <<"pmm.mmwl.funnel_events">>).
-define(FUNNEL_CONTROL_Q, <<"pmm.funnel.server_control">>).
-define(FUNNEL_NODE_Q_PREFIX, <<"pmm.funnel.nodes">>).

-define(K1API_AUTH_REQ_Q, <<"pmm.k1api.auth_request">>).
-define(K1API_AUTH_RESP_Q, <<"pmm.k1api.auth_response">>).
-define(K1API_DELIVERY_STATUS_REQ_Q, <<"pmm.k1api.delivery_status_request">>).
-define(K1API_DELIVERY_STATUS_RESP_Q, <<"pmm.k1api.delivery_status_response">>).
-define(K1API_INCOMING_Q, <<"pmm.k1api.incoming">>).
-define(K1API_RETRIEVE_SMS_REQ_Q, <<"pmm.k1api.retrieve_sms_request">>).
-define(K1API_RETRIEVE_SMS_RESP_Q, <<"pmm.k1api.retrieve_sms_response">>).
-define(K1API_SMS_REQ_Q, <<"pmm.k1api.sms_request">>).
-define(K1API_SUBSCRIPTION_REQ_Q, <<"pmm.k1api.subscription_request">>).
-define(K1API_SUBSCRIPTION_RESP_Q, <<"pmm.k1api.subscription_response">>).
-define(K1API_CONTROL_Q, <<"k1api.control">>).

-endif. % queue_fabric_hrl
