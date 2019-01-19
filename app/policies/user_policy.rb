# frozen_string_literal: true

class UserPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def homepage?
    @user
  end

  def data?
    @user&.can_read?('Data') || @user&.can_read?('Report')
  end

  def index?
    raise ActiveRecord::RecordNotFound if @record.empty?

    @user&.can_read?(@record.first.class.name)
  end

  def show?
    @user.can_read?(@record.class.name) || @user == @record
  end

  def new?
    @user&.can_create?(@record.class.name)
  end

  def create?
    @user&.can_create?(@record.class.name)
  end

  def edit?
    @user&.can_update?(@record.class.name)
  end

  def update?
    @user&.can_update?(@record.class.name)
  end

  def destroy?
    @user&.can_delete?(@record.class.name)
  end

  def permissions?
    @user&.can_read?('Permission') || @user&.can_update?('Permission')
  end

  def set_permissions?
    @user&.can_update?('Permission')
  end
end
