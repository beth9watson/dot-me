class ProjectsController < ApplicationController
  def show
    @projects = projects
  end

  private

  def projects
    gh_client = GithubClientService.new
    p = ENV['GITHUB_FEATURED_REPOS'].split(",").sort.map do |repo_name|
      gh_client.get_repo(repo_name)
    end
  end
end