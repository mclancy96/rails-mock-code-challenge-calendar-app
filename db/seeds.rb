Notification.destroy_all
Reminder.destroy_all
Event.destroy_all


event1 = Event.create!(title: "Team Meeting", date: Date.today)
event2 = Event.create!(title: "Product Launch", date: Date.today + 7)
event3 = Event.create!(title: "Company Picnic", date: Date.today + 14)

reminder1 = Reminder.create!(message: "Prepare slides", time: DateTime.now + 1.hour, event: event1)
reminder2 = Reminder.create!(message: "Send invites", time: DateTime.now + 2.hours, event: event1)
reminder3 = Reminder.create!(message: "Check catering", time: DateTime.now + 1.day, event: event3)
reminder4 = Reminder.create!(message: "Book venue", time: DateTime.now + 3.days, event: event3)

Notification.create!(recipient: "alice@example.com", sent_at: DateTime.now + 30.minutes, reminder: reminder1)
Notification.create!(recipient: "bob@example.com", sent_at: DateTime.now + 45.minutes, reminder: reminder1)
Notification.create!(recipient: "charlie@example.com", sent_at: DateTime.now + 2.hours, reminder: reminder2)
Notification.create!(recipient: "dave@example.com", sent_at: DateTime.now + 1.day, reminder: reminder3)
