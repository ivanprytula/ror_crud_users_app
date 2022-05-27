module CustomersHelper
  def create_or_edit_btn(customer)
    content = ''
    if customer.persisted?
      content << 'Update user'
    else
      content << 'Create user'
    end
    content.html_safe
  end
end
