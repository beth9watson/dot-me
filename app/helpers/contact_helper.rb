module ContactHelper
  def github_url
    ENV['GITHUB_URL']
  end

  def gmail_addr(sendto = true)
    "#{'mailto:' if sendto}#{ENV['GMAIL_ADDR']}"
  end

  def linkedin_url
    ENV['LINKEDIN_URL']
  end

  def download_resume_pdf_link
    "<a href='images/ResumePDF2017copy.pdf' download> Download PDF </a>".html_safe
  end
end
