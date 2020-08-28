local kausal = import "ksonnet-util/kausal.libsonnet";

local deployment = kausal.apps.v1.deployment;
local container = kausal.core.v1.container;
local port = kausal.core.v1.containerPort;
local service = kausal.core.v1.service;

local grafanaDeployment = deployment.new(
    name="demo", replicas=1,
    containers=[
      container.new("demo", "grafana/grafana")
      + container.withPorts([port.new("ui", "4949")]),
    ],
  );

[
  grafanaDeployment,
  kausal.util.serviceFor(grafanaDeployment),
]