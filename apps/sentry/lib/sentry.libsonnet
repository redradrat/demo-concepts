local helm = (import "github.com/grafana/jsonnet-libs/helm-util/helm.libsonnet").new(std.thisFile);

{
  _values:: {
    foo: error "missing value foo"
  },
  sentry: helm.template("sentry", "../charts/sentry", {
    namespace: "default",
    values: $._values
  })
}
