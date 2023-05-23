# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:


# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}


if ENV["LOCAL_DEPLOY"]
  server "localhost", user: "deploy", roles: %w{app db web}
  set :bundle_without, %w{test}.join(' ')
else
  instances = fetch(:instances)

  instances.each do |role_name, hosts|
    roles = [role_name]
    hosts.each_with_index do |host, i|
      roles << "db" if i == 0
      server host, user: "deploy", roles: roles
    end
  end
  set :bundle_without, %w{test}.join(' ')
end
