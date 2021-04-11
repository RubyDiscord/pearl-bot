Sequel.migration do
  up do
    create_table(:guilds) do
      primary_key :id
      String :snowflake, null: false
    end
  end

  down do
    drop_table(:guilds)
  end
end
