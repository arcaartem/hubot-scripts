# Description:
#   Interact with Nagios from Hubot
#
# Commands:
#   hubot nagios ack [host] [service] [server]
#   hubot nagios notifications [on|off] [name] [hostgroup|servicegroup|host)
#   hubot nagios downtime [host] [time (in minutes)]
#
# Author:
#   pstack

module.exports = (robot) ->

  disable = (msg, name, type) ->
    msg.send("")

  acknowledge = (msg, host, service, server) ->
    msg.send("")

  downtime = (msg, host, time) ->
    msg.send("")

  robot.respond /nagios ack (.*) (.*) (.*)/i, (msg) ->
    if msg.message.user.id is robot.name
      return

    #acknowledge msg, msg.match[1], msg.match[2], msg.match[3] (text) ->
    msg.send("In Progress")

  robot.respond /nagios notifications (.*) (.*) (.*)/i, (msg) ->
    if msg.message.user.id is robot.name
      return

    #disable msg, msg.match[1], msg.match[2] (text) ->
    msg.send("In Progress")

  robot.respond /nagios downtime (.*) (.*)/i, (msg) ->
    if msg.message.user.id is robot.name
      return

    #downtime msg, msg.match[1], msg.match[2] (text) ->
    msg.send("In Progress")
