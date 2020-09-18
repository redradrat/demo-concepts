local kausal = import "ksonnet-util/kausal.libsonnet";

local deployment = kausal.apps.v1.deployment;
local container = kausal.core.v1.container;
local port = kausal.core.v1.containerPort;
local service = kausal.core.v1.service;

local grafanaDeployment = deployment.new(
    name=std.extVar("instanceName"), replicas=2,
    containers=[
      container.new("grafana", "grafana/grafana")
      + container.withPorts([port.new("ui", "10330")]),
    ],
  );

local testDeployment = deployment.new(
    name=std.extVar("test"), replicas=2,
    containers=[
      container.new("grafana", "grafana/grafana")
      + container.withPorts([port.new("ui", "10330")]),
    ],
  );


[
  grafanaDeployment,
  testDeployment,
  kausal.util.serviceFor(grafanaDeployment),
]

