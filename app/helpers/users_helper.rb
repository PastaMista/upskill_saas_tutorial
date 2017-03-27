module UsersHelper
  
  def job_title_icon
    if @user.profile.job == "Babbo"
      '<i class="fa fa-plus"></i>'.html_safe
    elsif @user.profile.job == "Kappa"
      '<i class="fa fa-rocket"></i>'.html_safe
    elsif @user.profile.job == "Keppo"
      '<i class="fa fa-rebel"></i>'.html_safe
    end
  end
end