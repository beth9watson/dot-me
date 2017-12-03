class ProjectsController < ApplicationController
  def show
    @projects = projects
  end

  def carshare_estimator
    render 'projects/carshare/carshare_estimator'
  end

  private

  def projects
    gh_client = GithubClientService.new
    ENV['GITHUB_FEATURED_REPOS'].split(",").sort.map do |repo_name|
      gh_client.get_repo(repo_name)
    end
  end
end