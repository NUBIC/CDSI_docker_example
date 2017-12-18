# CDSI DOCKER EXAMPLE

To run:

1. Make sure you have [Docker](https://www.docker.com) installed!
2. Run `docker-compose up` in the directory
3. Run the following commands in this order:
	* `docker exec openldap ldapadd -x -D "cn=admin,dc=northwestern,dc=edu" -x -w 'password' -f /data/1.nu.ldif`
	* `docker exec openldap ldapadd -Q -Y EXTERNAL -H ldapi:/// -f /data/2.schema.ldif`
	* `docker exec openldap ldapadd -x -D "cn=admin,dc=northwestern,dc=edu" -x -w 'password' -f /data/3.entries.ldif`
4. The default user password is `blahblah`, to generate a new one type:
  * `docker exec -it openldap bash`
  * `sldappasswd`
5. To run tests locally, make sure you have something like this in your `.bashrc` or zsh/fish equivalent
  * `export MY_APP_DATABASE_URL="postgres://postgres@localhost/cdsi_example_dev"`
