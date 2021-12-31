# Deploy Wordpress + MySQL on a 3 nodes master-slave K3S cluster with Vagrant (provisionner) on Virtualbox (provider)

- Clone `Big_Data_Project` repository

        git clone https://github.com/johanlemesle/Big_Data_Project

- Ensure you have `Vagrant` installed and `kubectl CLI`

- Review and adjust `cluster.conf` file to suit your needs

- Create your cluster :

        ./create_cluster.sh

- Verify your cluster :

        ./verify_cluster.sh

- Deploy Wordpress :

        ./deploy_wordpress.sh

- Your Wordpress deployment can be viewed at :

        http://<MASTER_IP>:31234

- Destroy your cluster :

        ./destroy_cluster.sh
        
 ## Sources
 
 Run Vagrant on WSL2 : https://blog.thenets.org/how-to-run-vagrant-on-wsl-2/
 Deploying WordPress and MySQL with Persistent Volumes : https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/
