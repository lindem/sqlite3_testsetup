defmodule Sqlite3Testsetup.Repo do
  use Ecto.Repo,
    otp_app: :sqlite3_testsetup,
    adapter: Ecto.Adapters.SQLite3
end
