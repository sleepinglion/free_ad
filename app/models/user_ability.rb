class UserAbility
  include CanCan::Ability
  def initialize(user)
    if user
      if user.role? :administrator
        can :manage, :all
      elsif user.role? :operator
        can :manage, :all
        cannot :delete, [AdType,AdFileType,AdLog,AdLogType,Address,AddressSection,Bank,Target,TargetType,PointType,RequestSetting,RequestType,GameSetting,StoreGood]
        cannot :read, [Operator]
      elsif user.role? :sub_operator
        can :read, :all
        can :update,  [Ad,AdType,AdFileType,AdLogType,Address,AddressSection,Bank,Request,Target,TargetType,PointType,RequestSetting,RequestType,StoreGood,Sponsor,User]
        cannot :read, [Operator,ApplicationVersion,GameSetting]
      elsif user.role? :store_manager
        can :manage, [StoreGood,StoreOrder,StoreGoodPicture]
        cannot :read, [Operator,AppVersion,GameSetting]
      elsif user.role? :reader
        can :read, :all
        cannot :read, [Operator]
      end
    else
      cannot :manage, :all
    end
  end
end