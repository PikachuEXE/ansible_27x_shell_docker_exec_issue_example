### How to test with ansible 2.6 & 2.7

#### Using local ansible

2.6:
```
virtualenv --clear env/ansible_26x
source env/ansible_26x/bin/activate
pip install ansible==2.6.12
ansible --version
ansible-playbook ansible/playbooks/test.yml
```

2.7:
```
virtualenv --clear env/ansible_27x
source env/ansible_27x/bin/activate
pip install ansible==2.7.6
ansible --version
ansible-playbook ansible/playbooks/test.yml
```

#### Using docker

2.6:
```
IMAGE_LABEL=test_ansible_26; docker build -t $IMAGE_LABEL -f dockerfiles/ubuntu1804_ansible26.Dockerfile . && docker run -it --rm $IMAGE_LABEL
```

2.7:
```
IMAGE_LABEL=test_ansible_27; docker build -t $IMAGE_LABEL -f dockerfiles/ubuntu1804_ansible27.Dockerfile . && docker run -it --rm $IMAGE_LABEL
```
