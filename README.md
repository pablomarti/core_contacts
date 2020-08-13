# Core Contacts [WIP]

API that handles lists of contacts and dispatches notifications to be used by multiple services.

Dependencies:
- Doorkeeper as OAuth2 provider
- Fast JSON API for JSON API
- Pundit for policies and control access
- Versionist for handle API version changes
- Sidekiq for background processing
- RabbitMQ for message broker
- RSpec for TDD (pending)
