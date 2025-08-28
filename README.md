
# Rails Mock Code Challenge: Calendar App

Test your Rails skills by building a simple calendar and reminder platform! In this scenario, your company needs to keep track of important events, set reminders, and send notifications to users.

## Objectives

- MVC
- REST
- Request/Response Cycle
- Form/Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `bin/rails db:migrate` to get started.

## The Domain

The company needs to keep track of important events and reminders. Each event has a `title` and a `date`. Each event can have many reminders, and each reminder has a `message` and a `time`. Notifications can be sent for reminders, and each notification has a `recipient` and a `sent_at` timestamp.

## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this code challenge, and then tackle them one by one.

1. Create the associations between models. You may need to alter the schema to get your code working. Once set up, you should be able to run `bin/rails db:seed` without errors, and confirm in a `bin/rails console` that events, reminders, and notifications have the correct relationships.

2. On the events index page, an event's `title` should link to its show page.

3. The event show page should display the event's title, date, and all its reminders. Each reminder should show its message and time.

4. There should be a page to create a new event, including adding reminders to the event.

5. A user should be able to send a notification for a reminder. Each notification should have a recipient and a sent_at timestamp.

6. Add validations: an event must have a title and a date, and each event must have at least one reminder.

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
1. `git add` and `git commit` your changes.
1. From you custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
1. Send the patch file to your instructor on Connect before the specified time. Remember, you can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
