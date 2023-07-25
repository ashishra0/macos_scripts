tell application "Mail"
    set theMessage to make new outgoing message with properties {subject:"Reminder: Important Task", content:"Don't forget to take your umbrella!" & linefeed}
    tell theMessage
        make new to recipient at end of to recipients with properties {address:"zartanrao3@gmail.com"}
        send
    end tell
end tell
