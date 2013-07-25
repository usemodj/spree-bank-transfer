module Spree
	class BankAccount < ActiveRecord::Base
		attr_accessible :payment_method_id, :bank_name, :bank_branch, :account_owner, :account_number
		validates :bank_name, :bank_branch, :account_owner, :account_number, :presence => true
		validates :account_number #, :numericality => { :only_integer => true }

		#belongs_to :payment_method
	end
end