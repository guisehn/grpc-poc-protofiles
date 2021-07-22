defmodule GrpcPoc.HelloRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }
  defstruct [:name]

  field :name, 1, type: :string
end

defmodule GrpcPoc.HelloResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule GrpcPoc.HelloService.Service do
  @moduledoc false
  use GRPC.Service, name: "grpc_poc.HelloService"

  rpc :Hello, GrpcPoc.HelloRequest, GrpcPoc.HelloResponse
end

defmodule GrpcPoc.HelloService.Stub do
  @moduledoc false
  use GRPC.Stub, service: GrpcPoc.HelloService.Service
end
