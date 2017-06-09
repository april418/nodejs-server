###
Production Environment Configuration

This file define application environment variables.
###

module.exports =
  secret: 'An4ckzLK7X6tPCeSsyGJ7ixwkKNAcYXbeW66MTiYKGZWin8zZJdy9f5C7z9pXnW6'
  port: 80
  logger:
    appenders: [
      {
        type: 'dateFile'
        filename: 'logs/production.log'
        maxLogSize: 1048576
        backups: 30
      }
    ]
    levels: 'info'

