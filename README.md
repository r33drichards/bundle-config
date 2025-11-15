Run this binary with bundled config with the command 

```
echo '{"foo": "bar"}' | nix run github:r33drichards/bundle-config
```

you should see an output similar to:
```
$ echo '{"foo": "bar"}' | nix run github:r33drichards/bundle-config

2025-11-15T19:30:57.768295Z  INFO vector::app: Log level is enabled. level="info"
2025-11-15T19:30:57.771865Z  INFO vector::app: Loading configs. paths=["/nix/store/mc9rrc9zr5smny58qlh19663hiacy50h-stdout.yml"]
2025-11-15T19:30:57.792101Z  INFO vector::sources::file_descriptors: Capturing stdin.
2025-11-15T19:30:57.993463Z  INFO vector::topology::running: Running healthchecks.
2025-11-15T19:30:57.993642Z  INFO vector::topology::builder: Healthcheck passed.
2025-11-15T19:30:57.994966Z  INFO vector: Vector has started. debug="false" version="0.51.0" arch="aarch64" revision=""
2025-11-15T19:30:57.994998Z  INFO vector::app: API is disabled, enable by setting `api.enabled` to `true` and use commands like `vector top`.
2025-11-15T19:30:57.995868Z  INFO vector_common::shutdown: All sources have finished.
2025-11-15T19:30:57.995876Z  INFO vector_common::shutdown: Internal log [All sources have finished.] is being suppressed to avoid flooding.
2025-11-15T19:30:57.996062Z  INFO vector::app: All sources have finished.
2025-11-15T19:30:57.996090Z  INFO vector: Vector has stopped.
{"foo":"bar","host":"Roberts-Laptop.local","source_type":"stdin","timestamp":"2025-11-15T19:30:57.995483Z"}
$
```
