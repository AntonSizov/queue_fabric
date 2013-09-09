-ifndef(queue_fabric_hrl).
-define(queue_fabric_hrl, defined).

-include_lib("rabbit_common/include/rabbit_framing.hrl").

%% ===================================================================
%% JUST
%% ===================================================================

%% Just receives only ThroughputRequest from Kelly through this queue
-define(JUST_CONTROL_Q, <<"pmm.just.control">>).

%% Just receives sms requests from clients through this queue
-define(JUST_GTW_Q_PREFIX, <<"pmm.just.gateway">>).

%% Kelly receives sms receipts from Just through this queue
-define(RECEIPT_SMS_Q, <<"pmm.just.receipt_sms">>).
-define(RECEIPT_SMS_Q_SPEC,
	#'queue.declare'{
		queue = ?RECEIPT_SMS_Q,
		durable = true
	}).

%% Kelly receives sms responses from Just through this queue
-define(RESPONSE_SMS_Q, <<"pmm.just.sms_response">>).
-define(RESPONSE_SMS_Q_SPEC,
	#'queue.declare'{
		queue = ?RESPONSE_SMS_Q,
		durable = true
	}).

%% Kelly receives incoming sms from Just through this queue
-define(INCOMING_SMS_Q, <<"pmm.just.incoming_sms">>).
-define(INCOMING_SMS_Q_SPEC,
	#'queue.declare'{
		queue = ?INCOMING_SMS_Q,
		durable = true
	}).

%% ===================================================================
%% FUNNEL
%% ===================================================================

%% Kelly receives auth requests from Funnel through this queue
-define(FUNNEL_AUTH_Q, <<"pmm.funnel.auth">>).
-define(FUNNEL_AUTH_Q_SPEC,
	#'queue.declare'{
		queue = ?FUNNEL_AUTH_Q
	}).

%% Kelly receives funnel, soap and k1api sms requests through this queue
-define(FUNNEL_BATCHES_Q, <<"pmm.sms_request">>).
-define(FUNNEL_BATCHES_Q_SPEC,
	#'queue.declare'{
		queue = ?FUNNEL_BATCHES_Q,
		durable = true
	}).

%% Kelly receives Funnel events (conn up/down, srv up/down) through this queue
-define(FUNNEL_EVENTS_Q, <<"pmm.funnel.events">>).
-define(FUNNEL_EVENTS_Q_SPEC,
	#'queue.declare'{
		queue = ?FUNNEL_EVENTS_Q,
		durable = true
	}).

%% Funnel receives BindResponse, DisconnectRequest, ConnectionsRequest,
%% ThroughputRequest from Kelly through this queue
-define(FUNNEL_CONTROL_Q, <<"pmm.funnel.control">>).
-define(FUNNEL_CONTROL_Q_SPEC,
	#'queue.declare'{
		queue = ?FUNNEL_CONTROL_Q,
		exclusive = true,
		auto_delete = true
	}).

%% Funnel receives incoming sms from Kelly through this queue
-define(FUNNEL_NODE_Q_PREFIX, <<"pmm.funnel.nodes">>).

%% ===================================================================
%% K1API/SOAP
%% ===================================================================

%% Kelly receives auth requests from soap/k1api through this queue
-define(K1API_AUTH_REQ_Q, <<"pmm.http.auth_request">>).

%% Kelly receives delivery status requests from soap/k1api through this queue
-define(K1API_DELIVERY_STATUS_REQ_Q, <<"pmm.http.delivery_status_request">>).

%% K1API receives incoming sms from Kelly through this queue
-define(K1API_INCOMING_Q, <<"pmm.k1api.incoming_sms">>).

%% Kelly receives retrieve_sms_request from k1api through this queue
-define(K1API_RETRIEVE_SMS_REQ_Q, <<"pmm.k1api.retrieve_sms_request">>).

%% Kelly receives subscription requests from k1api through this queue
-define(K1API_SUBSCRIPTION_REQ_Q, <<"pmm.k1api.subscription_request">>).

%% K1API should receive purge auth cache requests from Kelly through
%% this queue
-define(K1API_CONTROL_Q, <<"pmm.k1api.control">>).

%% SOAP receives CleanAuthCacheReq from Kelly through this queue
-define(SOAP_CONTROL_Q, <<"pmm.soap.control">>).
-define(SOAP_CONTROL_Q_SPEC,
	#'queue.declare'{
		queue = ?SOAP_CONTROL_Q,
		durable = true % to save cache purge requests
	}).

%% SOAP receives incoming sms from Kelly through this queue
-define(SOAP_INCOMING_Q, <<"pmm.soap.incoming">>).

%% See above
-define(SOAP_DELIVERY_STATUS_REQ_Q, ?K1API_DELIVERY_STATUS_REQ_Q).
-define(SOAP_AUTH_REQ_Q, ?K1API_AUTH_REQ_Q).

-endif. % queue_fabric_hrl
