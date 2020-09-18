local grafana = import "grafana/lib/main.libsonnet";

// Final JSON Object
{
  new(name):: [
    grafana.new(name),
    grafana.new("test")
  ]
}
