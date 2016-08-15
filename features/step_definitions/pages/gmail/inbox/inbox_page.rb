class InboxPage < SitePrism::Page
  set_url "https://mail.google.com/mail/#inbox"

  sections :table_records, TableRecordSection, "table.zt tr"
end