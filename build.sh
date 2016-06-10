
local_sum=$(sha256sum ubuntu-trusty-core-cloudimg-amd64-root.tar.gz | awk '{print $1}')

if [ -f ubuntu-trusty-core-cloudimg-amd64-root.tar.gz ];then
  remote_sum=$(curl -s https://partner-images.canonical.com/core/trusty/current/SHA256SUMS | grep ubuntu-trusty-core-cloudimg-amd64-root.tar.gz  | awk '{print $1}')
fi

if [ "$local_sum" != "$remote_sum" ];then
  echo $local_sum
  echo $remote_sum
  curl -O https://partner-images.canonical.com/core/trusty/current/ubuntu-trusty-core-cloudimg-amd64-root.tar.gz
fi


docker build -t dalehamel/ubuntu-docker-upstart-minimal:latest .
