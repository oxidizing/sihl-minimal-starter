module Random = Sihl.Utils.Random.Service.Make ()

module Log = Sihl.Log.Service.Make ()

module Config = Sihl.Config.Service.Make (Log)
module Db = Sihl.Data.Db.Service.Make (Config) (Log)
module MigrationRepo = Sihl.Data.Migration.Service.Repo.MakeMariaDb (Db)

module Cmd = Sihl.Cmd.Service.Make ()

module Migration =
  Sihl.Data.Migration.Service.Make (Log) (Cmd) (Db) (MigrationRepo)
module WebServer = Sihl.Web.Server.Service.MakeOpium (Log) (Cmd)
module Schedule = Sihl.Schedule.Service.Make (Log)
module Seed = Sihl.Seed.Service.Make (Log) (Cmd)
