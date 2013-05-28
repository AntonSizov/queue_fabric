-ifndef(queue_fabric_hrl).
-define(queue_fabric_hrl, defined).

-define(justControlQ, <<"pmm.just.control">>).
-define(justGtwQPrefix, <<"pmm.just.gateway">>).
-define(receiptSmsQ, <<"pmm.mmwl.receipt.sms">>).
-define(responseSmsQ, <<"pmm.mmwl.response.sms">>).
-define(incomingSmsQ, <<"pmm.mmwl.incoming.sms">>).

-define(funnelAuthQ, <<"pmm.mmwl.funnel_auth">>).
-define(funnelBatchesQ, <<"pmm.mmwl.funnel_batches">>).
-define(funnelEventsQ, <<"pmm.mmwl.funnel_events">>).
-define(funnelControlQ, <<"pmm.funnel.server_control">>).
-define(funnelNodeQPrefix, <<"pmm.funnel.nodes">>).

-define(k1apiAuthReqQ, <<"pmm.k1api.auth_request">>).
-define(k1apiAuthRespQ, <<"pmm.k1api.auth_response">>).
-define(k1apiDeliveryStatusReqQ, <<"pmm.k1api.delivery_status_request">>).
-define(k1apiDeliveryStatusRespQ, <<"pmm.k1api.delivery_status_response">>).
-define(k1apiIncomingQ, <<"pmm.k1api.incoming">>).
-define(k1apiRetrieveSmsReqQ, <<"pmm.k1api.retrieve_sms_request">>).
-define(k1apiRetrieveSmsRespQ, <<"pmm.k1api.retrieve_sms_response">>).
-define(k1apiSmsReqQ, <<"pmm.k1api.sms_request">>).
-define(k1apiSubscriptionReqQ, <<"pmm.k1api.subscription_request">>).
-define(k1apiSubscriptionRespQ, <<"pmm.k1api.subscription_response">>).

-endif. % queue_fabric_hrl
