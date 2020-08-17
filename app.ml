let services: (module Sihl.Core.Container.SERVICE) list =
  [
    (module Service.WebServer);
  ]

let hello_page =
  Sihl.Web.Route.get "/hello/" (fun _ ->
      Sihl.Web.Res.(html |> set_body "Hello!") |> Lwt.return)

let hello_api =
  Sihl.Web.Route.get "/hello/" (fun _ ->
      Sihl.Web.Res.(json |> set_body {|{"msg":"Hello!"}|}) |> Lwt.return)

let routes =
  [ ("/page", [ hello_page ], []); ("/api", [ hello_api ], []) ]

module App = Sihl.App.Make (Service)

let _ =
  App.(
    empty
    |> with_services services
    |> with_routes routes
    |> run
  )
