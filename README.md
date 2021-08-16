- change your path for puppet master code
- currently set path in docker compose


```
$cat pupperware/gem/lib/pupperware/compose-services/puppet.yml
...
    volumes:
      - /tmp/puppetserver-code:/etc/puppetlabs/code/
      - /tmp/puppetserver-code/hiera.yaml:/etc/puppetlabs/puppet/hiera.yaml
      - puppetserver-config:/etc/puppetlabs/puppet/
      - puppetserver-data:/opt/puppetlabs/server/data/puppetserver/
...
```
- I have put it in /tmp directory..you can set it as per your config.
- you may need to give o+w to this directory as puppet master runs as a root.

- start docker compose.
```
    bash pupperware/docker-up.sh
```
it should be healthy in 1-2 mins.