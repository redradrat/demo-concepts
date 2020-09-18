local grafanaDeployment = deployment.new(
    name=std.extVar("instanceName"), replicas=2,
    containers=[
      container.new("grafana", "grafana/grafana")
      + container.withPorts([port.new("ui", "10330")]),
    ],
  );

[
  grafanaDeployment
]
