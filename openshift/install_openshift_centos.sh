yum update -y
yum install git -y
curl -LO https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
tar -xvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz 
cp -r openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc /usr/local/bin/
cp -r openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/kubectl /usr/local/bin/
chmod +x /usr/local/bin/oc
chmod +x /usr/local/bin/kubectl 
export PATH=$PATH:/usr/local/bin/
rm -rf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit*
git clone https://github.com/gshipley/installcentos
cd installcentos
export DOMAIN=cluster1.dakar.io
export USERNAME=cluster1
export PASSWORD=sonateltraining
./install-openshift.sh
oc login -u root -p password https://console.cluster1.dakar.io:8443/
