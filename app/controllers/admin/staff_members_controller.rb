# frozen_string_literal: true

module Admin
  class StaffMembersController < AdminController
    def index
      @staff_members = StaffMember.all
    end

    def new
      @staff_member = StaffMember.new
    end

    def create
      @staff_member = StaffMember.new(staff_member_params)

      if @staff_member.save
        redirect_to admin_staff_members_path, flash: { notice: 'Staff member has been created!' }
      else
        render 'new'
      end
    end

    def edit
      @staff_member = StaffMember.find(params[:id])
    end

    def update
      @staff_member = StaffMember.find(params[:id])

      if @staff_member.update(staff_member_params)
        redirect_to admin_staff_members_path, notice: 'Staff member was updated!'
      else
        render 'edit'
      end
    end

    def destroy
      @staff_member = StaffMember.find(params[:id])
      @staff_member.destroy

      redirect_to admin_staff_members_path, notice: 'Staff member was deleted!'
    end

    private

    def staff_member_params
      params.require(:admin_staff_member).permit(:first_name, :last_name, :nickname, :birthday, :member_since,
                                                 :favourite_aircraft, :responsibilities)
    end
  end
end
