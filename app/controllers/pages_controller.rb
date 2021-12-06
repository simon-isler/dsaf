# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    @news = Admin::News.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
    @staff_members = Admin::StaffMember.all
    render "pages/#{params[:page_name]}"
  end
end
