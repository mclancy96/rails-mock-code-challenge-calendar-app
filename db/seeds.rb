
# Clear out existing data
Reminder.destroy_all
Event.destroy_all

events = [
	{ title: "Project Launch", date: Date.today + 7 },
	{ title: "Team Meeting", date: Date.today + 2 },
	{ title: "Code Review", date: Date.today + 5 }
]

events.each do |event_attrs|
	event = Event.create!(event_attrs)
	case event.title
	when "Project Launch"
		event.reminders.create!(message: "Prepare slides", time: Time.now + 2.days)
		event.reminders.create!(message: "Send invites", time: Time.now + 3.days)
	when "Team Meeting"
		event.reminders.create!(message: "Draft agenda", time: Time.now + 1.day)
	when "Code Review"
		event.reminders.create!(message: "Review PRs", time: Time.now + 4.days)
		event.reminders.create!(message: "Merge changes", time: Time.now + 5.days)
	end
end

puts "Seeded #{Event.count} events and #{Reminder.count} reminders."
