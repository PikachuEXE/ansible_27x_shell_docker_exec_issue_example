#### How to test with ansible 2.6 & 2.7

2.6:
```
virtualenv --clear env/ansible_26x
source env/ansible_26x/bin/activate
pip install ansible==2.6.5
ansible --version
ansible-playbook ansible/playbooks/test.yml
```

2.7:
```
virtualenv --clear env/ansible_27x
source env/ansible_27x/bin/activate
pip install ansible==2.7.2
ansible --version
ansible-playbook ansible/playbooks/test.yml
```
