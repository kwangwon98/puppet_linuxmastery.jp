# /home/administrator/code/environments/production/modules/webapp/manifests/init.pp
# webapp default manifest
class webapp {

  include webapp::web
  include webapp::db
  include webapp::wp

  Class['webapp::db'] -> Class['webapp::wp']
}
