node default {
    notify {'hello from production environment..!!':}
}


node /production-.*/ {
    notify {'hello from production-* regex..':}
}


node /production-puppet-.*/ {
    notify {'hello from production-puppet-* regex..':}
}


node 'production-puppet-1' {
    notify {'hello from production-puppet-1':}
}

node 'mysql-box-1' {
  notify {'hello from mysql-box-1':}
}
