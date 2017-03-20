class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def line; basic_action end

  def facebook
    auth = request.env['omniauth.auth']
    user = User.find_or_create_by(
      provider: auth.provider,
      uid: auth.uid
    )

    remember_me(user)

   sign_in_and_redirect user, event: :authentication
  end

 　def failure
    redirect_to root_path
 　end

　 private

  def basic_action
    @omniauth = request.env['omniauth.auth']
    if @omniauth.present?
      @profile = SocialProfile.where(provider: @omniauth['provider'], uid: @omniauth['uid']).first
      if @profile
        @profile.set_values(@omniauth)
        sign_in(:user, @profile.user)
      else
        @profile = SocialProfile.new(provider: @omniauth['provider'], uid: @omniauth['uid'])
        email = @omniauth['info']['email'] ? @omniauth['info']['email'] : Faker::Internet.email
        @profile.user = current_user || User.create!(email: email, name: @omniauth['info']['name'], password: Devise.friendly_token[0, 20])
        @profile.set_values(@omniauth)
        sign_in(:user, @profile.user)
        redirect_to edit_user_path(@profile.user.id) and return
      end
    end
    redirect_to root_path
  end
end
