module ContactHelper
  def github_url
    ENV['github_url']
  end

  def gmail_addr(sendto = true)
    "#{'mailto:' if sendto}#{ENV['gmail_addr']}"
  end

  def linkedin_url
    ENV['linkedin_url']
  end
end
