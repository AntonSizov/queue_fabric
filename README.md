# Queue Fabric

This is a single include hrl file (queue_fabric.hrl) that contains
the set of queue macroses for [OpenAlley].
The main idea is to syncronize queues' names and its' properties
(durablility and etc) between [OpenAlley] components: [just],
funnel, [kelly], [soap_srv], [k1api].

## Usage

``` erlang
-include_lib("queue_fabric/include/queue_fabric.hrl").

QueueName = ?SOAP_INCOMING_Q,
...

```

See include/queue_fabric.hrl for available macroses.

[OpenAlley]: https://github.com/PowerMeMobile/kelly
[just]: https://github.com/PowerMeMobile/just_mini
[kelly]: https://github.com/PowerMeMobile/kelly
[soap_srv]: https://github.com/PowerMeMobile/soap_srv
[k1api]: https://github.com/PowerMeMobile/k1api