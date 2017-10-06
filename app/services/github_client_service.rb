# require 'octokit'
class GithubClientService
  # Repo = Struct.new(:link, :name, :description, :pushed_at, :language) do end

  def initialize
    # @client = ::Octokit::Client.new(access_token: ENV['GITHUB_DOTME_ACCESS_TOKEN'])
  end

  def get_repo(repo_name)
    # @client.repo(ENV['GITHUB_USERNAME'] + "/#{repo_name}")
    descr = "Squashy armchairs dirt on your nose brass scales crush the Sopophorous bean with flat side of silver dagger, releases juice better than cutting. Full moon Whomping Willow three turns should do it lemon drops. Locomotor trunks owl treats that will be 50 points, Mr. Potter. Witch Weekly, he will rise ag"
    Repo.new('www.google.com', 'awesome project', descr, Time.now, 'Ruby')
  end
end
