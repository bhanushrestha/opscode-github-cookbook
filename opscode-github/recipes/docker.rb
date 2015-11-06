docker_service 'default' do
  action [:create, :start]
end

# Pull latest image
docker_image 'nginx' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_nginx]'
end

# Run container exposing ports
docker_container 'my_nginx' do
  repo 'nginx'
  tag 'latest'
  port '80:80'
  host_name 'www'
  domain_name 'computers.biz'
  env 'FOO=bar'
  binds [ '/some/local/files/:/etc/nginx/conf.d' ]
end