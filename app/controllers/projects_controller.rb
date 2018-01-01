class ProjectsController < ApplicationController
  def show
    gh_client = GithubClientService.new
    @racko = gh_client.get_repo(ENV['GITHUB_REPO_RACKO'])
    @carshare = gh_client.get_repo(ENV['GITHUB_REPO_CARSHARE'])
  end

  def carshare_estimator
    render 'projects/carshare/carshare_estimator'
  end
end