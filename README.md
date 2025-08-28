
# Rails Code Challenge: Calendar App

It's time to put your Rails know-how to the test. Our company needs a way to keep track of important events and reminders so nothing falls through the cracks!

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

Everyone is busy, but keeping track of key events is a BIG DEAL. We need a way to keep track of which reminders go with each event. It looks like another developer has already started building our application. We have models for `Event` and `Reminder`. But we need to make sure reminders are associated with events.

We have several events, and each event can have many reminders. Reminders only belong to one event.

## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this code challenge, and then tackle them one by one.

1. Create the associations between models. You will have to alter the current schema to get your code working. Once you've set up your relationships properly, you will be able to run `bin/rails db:seed` without errors, and confirm in a `bin/rails console` that the events and reminders have been created with the proper relations.

2. On the events index page, an event's `title` should link to its show page.

3. The event show page should include the event's title, its date (ex: '2025-08-28'), and all its reminders. Each reminder should show its message and time.

4. On the reminders index page, a reminder's message should link to its show page.

5. The reminder show page should have its message, time, and display the event it belongs to. The event should link to the event's show page.

6. One needs to be able to create a new event in the app. A new event requires a title, a date, and at least one reminder.

7. An event must have a title and a date. Each event must have at least one reminder. A reminder must have a message and a time.
