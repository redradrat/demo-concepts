local lib = import "lib/sentry.libsonnet";

local values = {
  foo: "test"
};

lib + { _values+: values }
