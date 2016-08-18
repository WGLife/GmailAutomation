class InboxPage < SitePrism::Page
  set_url 'https://mail.google.com/mail/#inbox'

  attr_reader :carcass

  def initialize
    @carcass = Carcass.new
  end

  sections :table_records, TableRecordSection, 'table.zt tr'
end