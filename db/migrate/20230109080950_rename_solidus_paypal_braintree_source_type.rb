class RenameSolidusPaypalBraintreeSourceType < ActiveRecord::Migration[6.1]
  def up
    # Enable the following data migrations if you need to rename
    # SolidusPaypalBraintree references in your database.
    #
    # However, take note that running a single query to update data can cause
    # issues for large tables. Depending on the size of your database, you may
    # want to modify the migrations based on the best practices recommended in
    # https://github.com/ankane/strong_migrations#backfilling-data.

    # Spree::Payment.where(source_type: 'SolidusPaypalBraintree::Source')
    #   .update_all("source_type = 'SolidusBraintree::Source'")

    # Spree::WalletPaymentSource.where(payment_source_type: 'SolidusPaypalBraintree::Source')
    #   .update_all("payment_source_type = 'SolidusBraintree::Source'")

    # Spree::PaymentMethod.where('type = ?', 'SolidusPaypalBraintree::Gateway')
    #   .update_all("type = 'SolidusBraintree::Gateway'")
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
