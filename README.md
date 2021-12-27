# Deploy Wordpress + Mysql on a 3 nodes master-slave K3S cluster with Vagrant as a provisionner

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