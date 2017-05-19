require('dotenv').config()

settings =
  enableQueryCli: process.env.LOOKER_EXPERIMENTAL_QUERY_CLI == "true"
  enableGuestUsers: process.env.ALLOW_SLACK_GUEST_USERS == "true"
  unsafeLocalDev: process.env.UNSAFE_LOCAL_DEV == "true"

if settings.unsafeLocalDev
  # Allow communicating with Lookers running on localhost with self-signed certificates
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = 0

module.exports = settings