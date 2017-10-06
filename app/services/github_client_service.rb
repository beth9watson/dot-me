# require 'octokit'
class GithubClientService
  # Repo = Struct.new(:url, :name, :description, :pushed_at, :language, :read_more) do end

  def initialize
    @client = ::Octokit::Client.new(access_token: ENV['GITHUB_DOTME_ACCESS_TOKEN'])
  end

  def get_repo(repo_name)
    r = @client.repo(ENV['GITHUB_USERNAME'] + "/#{repo_name}")
    r.read_more = get_long_description(r.full_name)
    r.language_percentages = get_language_percentages(r.full_name)
    r
    # descr = "Squashy armchairs dirt on your nose brass scales crush the"
    # Repo.new('www.google.com', 'awesome project', descr, Time.now, 'Ruby', 'holy poop')
  end

  private

  def get_language_percentages(repo_name)
    langs = @client.languages(repo_name).to_h
    total_bytes = langs.values.sum
    langs.each do |key, val|
      langs[key] = (val.to_f/total_bytes * 100).round(0).to_s
    end
    langs
  end 

  def get_long_description(repo_name)
    @client.contents(repo_name, path: 'dot_me_descr.txt').content.unpack('m*')[0]
  rescue Octokit::NotFound
    return

  end
end
