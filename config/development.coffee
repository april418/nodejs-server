###
Development Environment Configuration

This file define application environment variables.
###

module.exports =
  secret: 'hNbZpAWjKkmJsSfjzkLGs5Pt5pPKSiuR'
  port: 8080
  logger:
    appenders: [
      {
        type: 'stdout'
      },
      {
        type: 'dateFile'
        filename: 'logs/development.log'
        maxLogSize: 1048576
        backups: 30
      }
    ]
    levels: 'debug'

