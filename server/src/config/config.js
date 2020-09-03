module.exports = {
    port: 8081,
        db: {
            database: process.env.DB_NAME || 'nvWebblogDb',
            user: process.env.DB_User || 'root',
            //password: process.env.DB_PASS || 'SC2-41445K1639',
            assword: process.env.DB_PASS || '',
            options: {
                dialect: process.env.DIALECT || 'sqlite',
                storage: './nvwebblog-db.sqlite'
                //host: process.env.HOST || 'localhost',
            },
        },
        authentication: {
            jwtSecret: "test"
        }
    }