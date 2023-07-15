### Configuration management IP
The below description details the assignment submitted

## Vagrant
I have chosen to use an online debian servers where I have installed ansible and terraform servers. 

Below are the details for the servers

|Server   / IP       | Function  | User  | Password  |
|----------------|---------------|-------|-----------|
|35.239.95.208   | Server        |  root | joy123    |
|35.239.235.222  | Client 1      |  root | joy123    |
|35.224.128.189  | Client 2      |  root | joy123    |

I have ansible installed and terraform provisioning done on the server machine above. 

Ansible assingment found under /etc/ansible main ansible folder in a directory called /configuration-management-ip. 

The folder has both assignment part 1 and 2. on this repo can find both the branches accordingly. 

Execute the playbook as follows: 
    ```ansible-playbook -i hosts playbook.yaml```

For assigment 2 feel free to execute ```terraform init``` and ```terraform apply``` commands and confirm status for the infra profided.
