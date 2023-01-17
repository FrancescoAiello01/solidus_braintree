class RenameSolidusPaypalBraintreeSourceType < ActiveRecord::Migration[6.1]
  def up
    Spree::Payment.where(source_type: 'SolidusPaypalBraintree::Source')
      .update_all("source_type = 'SolidusBraintree::Source'")

    Spree::WalletPaymentSource.where(payment_source_type: 'SolidusPaypalBraintree::Source')
      .update_all("payment_source_type = 'SolidusBraintree::Source'")

    Spree::PaymentMethod.where('type = ?', 'SolidusPaypalBraintree::Gateway')
      .update_all("type = 'SolidusBraintree::Gateway'")
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
