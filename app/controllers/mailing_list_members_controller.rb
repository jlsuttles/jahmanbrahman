class MailingListMembersController < ApplicationController
  before_filter :require_admin, :only => [:index]

  layout 'shadowbox'

  def index
    @mailing_list_members = MailingListMember.all
  end
  
  def create
    @mailing_list_member = MailingListMember.new(params[:mailing_list_member])
    @mailing_list_member.save
    redirect_to :back
  end

end
