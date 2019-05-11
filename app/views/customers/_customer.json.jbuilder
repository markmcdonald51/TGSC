json.extract! customer, :id, :membership_level_id, :aasm_state, :last_pay_date, :created_at, :updated_at
json.url customer_url(customer, format: :json)
