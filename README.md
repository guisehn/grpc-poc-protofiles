# GRPC POC Protofiles

Acts as a central repository for defining the protofiles, and also the auto-generated repositoris for multiple languages.
## Installing deps

1. `protoc`: `brew install protobuf`
2. `protoc-gen-elixir`: `mix escript.install hex protobuf` and make sure you add it to your path

## Compiling

`./compile.sh`

## Implementations

- [grpc-poc-elixir-server](https://github.com/guisehn/grpc-poc-elixir-server)
- [grpc-poc-elixir-client](https://github.com/guisehn/grpc-poc-elixir-client)
