#!/usr/bin/env ruby

require 'telegram/bot'

# token:
# 1. Write your TOKEN value into "token" variable or
# 2. Create a local file "hiden.token" with your TOKEN value inside
token = `cat hide.token`.strip
bot_username = '@Bot_rodriguez27'

puts "[INFO] Running bot #{$0}..."

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    puts " => #{message.text}"
    if message.text == "/hello"
      bot.api.send_message(chat_id: message.chat.id, text: "Hello Word!")
    elsif message.text == "/byebye"
      bot.api.send_message(chat_id: message.chat.id, text: "Bye bye!")
		elsif message.text == "/ping"
			ms = `ping 8.8.4.4 -c2`
			bot.api.send_message(chat_id: message.chat.id, text: ms)
		elsif message.text == "/storage"
			storage = `df -hT`
			bot.api.send_message(chat_id: message.chat.id, text: storage)
    end
  end
end