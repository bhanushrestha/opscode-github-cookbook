directory '/etc/hello-world' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

git "/etc/hello-world" do
   repository 'https://github.com/bhanushrestha/hello-world'
   reference 'master'
   action :sync
 end