class NewEmailSection < SitePrism::Section

  element :to_input, '.eV .vO[aria-autocomplete]'
  element :subject_input, '.aoT'
  element :send_button, ".Up div[role='button'].T-I"

  def send_email(recipient, subject = 'Subject' + Random.rand(1000).to_s)
    to_input.set recipient
    subject_input.set subject
    send_button.click
    subject
  end
end