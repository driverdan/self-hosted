db.getSiblingDB("unifi").createUser({user: "unifi", pwd: "unifidbpwd", roles: [{role: "dbOwner", db: "unifi"}, {role: "dbOwner", db: "unifi_stat"}]});
