module.exports = {
  HOST: process.env.MYSQL_HOST || 'localhost',
  USER: process.env.MYSQL_USER || 'nodeuser',
  PASSWORD: process.env.MYSQL_PASSWORD || 'changeme',
  DB: process.env.MYSQL_DATABASE || 'nodeappdb',
  PORT: process.env.MYSQL_PORT || 3306
};