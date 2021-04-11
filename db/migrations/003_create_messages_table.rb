Sequel.migration do
  up do
    create_table(:messages) do
      primary_key :id
      String :snowflake, null: false
    end
  end

  down do
    drop_table(:users)
  end
end
