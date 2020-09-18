{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='handler', url='', help='Handler defines a specific action that should be taken'),
  '#exec':: d.obj(help='ExecAction describes a "run in container" action.'),
  exec: {
    '#withCommand':: d.fn(help="Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.", args=[d.arg(name='command', type=d.T.array)]),
    withCommand(command): { exec+: { command: if std.isArray(v=command) then command else [command] } },
    '#withCommandMixin':: d.fn(help="Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='command', type=d.T.array)]),
    withCommandMixin(command): { exec+: { command+: if std.isArray(v=command) then command else [command] } }
  },
  '#httpGet':: d.obj(help='HTTPGetAction describes an action based on HTTP Get requests.'),
  httpGet: {
    '#withHost':: d.fn(help='Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.', args=[d.arg(name='host', type=d.T.string)]),
    withHost(host): { httpGet+: { host: host } },
    '#withHttpHeaders':: d.fn(help='Custom headers to set in the request. HTTP allows repeated headers.', args=[d.arg(name='httpHeaders', type=d.T.array)]),
    withHttpHeaders(httpHeaders): { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } },
    '#withHttpHeadersMixin':: d.fn(help='Custom headers to set in the request. HTTP allows repeated headers.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='httpHeaders', type=d.T.array)]),
    withHttpHeadersMixin(httpHeaders): { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } },
    '#withPath':: d.fn(help='Path to access on the HTTP server.', args=[d.arg(name='path', type=d.T.string)]),
    withPath(path): { httpGet+: { path: path } },
    '#withPort':: d.fn(help='IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.', args=[d.arg(name='port', type=d.T.string)]),
    withPort(port): { httpGet+: { port: port } },
    '#withScheme':: d.fn(help='Scheme to use for connecting to the host. Defaults to HTTP.', args=[d.arg(name='scheme', type=d.T.string)]),
    withScheme(scheme): { httpGet+: { scheme: scheme } }
  },
  '#tcpSocket':: d.obj(help='TCPSocketAction describes an action based on opening a socket'),
  tcpSocket: {
    '#withHost':: d.fn(help='Optional: Host name to connect to, defaults to the pod IP.', args=[d.arg(name='host', type=d.T.string)]),
    withHost(host): { tcpSocket+: { host: host } },
    '#withPort':: d.fn(help='IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.', args=[d.arg(name='port', type=d.T.string)]),
    withPort(port): { tcpSocket+: { port: port } }
  },
  '#mixin': 'ignore',
  mixin: self
}