module ContactHelper
  def download_resume_pdf_link
    "<a href=#{resume_url} download> Download PDF </a>".html_safe
  end

  def github_url
    ENV['GITHUB_URL']
  end

  def gmail_addr(sendto = true)
    "#{'mailto:' if sendto}#{ENV['GMAIL_ADDR']}"
  end

  def linkedin_url
    ENV['LINKEDIN_URL']
  end

  def resume_url
    'images/watsonResume2017.pdf'
  end
end
