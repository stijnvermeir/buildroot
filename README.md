# buildroot

To get started
* Install clean Ubuntu 16.04
* Run setup_work_environment.sh on it
* Build docker image: `docker-compose build buildroot`
* Start docker image: `docker-compose run --rm buildroot`
* Inside container:
  * You should be inside /work
  * Run `make O=/work/output -C /buildroot menuconfig`
  * After that, you can cd to /work/output and run `make menuconfig` etc.
