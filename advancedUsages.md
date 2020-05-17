require 'pepipost'

require 'json'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

send_controller = client.send

body = Send.new

body.reply_to = 'you-reply-to-id-address@mydomain.name'

body.from = From.new

body.from.email = 'hello@your-register-domain-with-pepipost'

body.from.name = 'Pepipost'

body.subject = 'Pepipost Test Mail through Ruby SDK'

body.template_id = 122434

body.content = []

body.content[0] = Content.new

body.content[0].type = TypeEnum::HTML

body.content[0].value = '<html><body>Hello [%NAME%], Email testing is successful. <br> Hope you enjoyed this integration. <br></html>'

body.attachments = []

body.attachments[0] = Attachments.new

body.attachments[0].content = 'SGVsbG8gd2VsY29tZSB0byBQRVBJIHY1IEFQSQ=='

body.attachments[0].name = 'global-text-file.txt'


body.personalizations = []

body.personalizations[0] = Personalizations.new

body.personalizations[0].attributes = JSON.parse('{"NAME":"User"}')

body.personalizations[0].attachments = []

body.personalizations[0].attachments[0] = Attachments.new

body.personalizations[0].attachments[0].content = 'SGVsbG8gd2VsY29tZSB0byBQRVBJIHY1IEFQSQ=='

body.personalizations[0].attachments[0].name = 'personalized-test-file.txt'


body.personalizations[0].to = []

body.personalizations[0].to[0] = EmailStruct.new

body.personalizations[0].to[0].name = 'Pepi Hero'

body.personalizations[0].to[0].email = 'toaddress@mydomain.name'

body.personalizations[0].cc = []

body.personalizations[0].cc[0] = EmailStruct.new

body.personalizations[0].cc[0].email = 'your-cc-email-address@mydomain.name'

body.personalizations[0].bcc = []

body.personalizations[0].bcc[0] = EmailStruct.new

body.personalizations[0].bcc[0].email = 'your-bcc-email-address@mydomain.name'


body.personalizations[0].token_to = '"{\"Arg1\":\"Value1\"}"'

body.personalizations[0].token_cc = '"{\"Arg1\":\"Value1\"}"'

body.personalizations[0].token_bcc = '"{\"Arg1\":\"Value1\"}"'

body.personalizations[0].headers = '"{\"Arg1\":\"Value1\"}"'

body.settings = Settings.new

body.settings.footer = true

body.settings.click_track = true

body.settings.open_track = true

body.settings.unsubscribe_track = true

body.settings.bcc = []

body.settings.bcc[0] = EmailStruct.new

body.settings.bcc[0].email = 'your-global-email-address@mydomain.name'


body.tags = ['campaign']

body.lint_payload = true

body.schedule = 1589728985

begin

  result = send_controller.create_generate_the_mail_send_request(body)

  puts JSON.pretty_generate(result)

rescue APIException => ex

  puts "Caught APIException: #{ex.message}"
  
end
