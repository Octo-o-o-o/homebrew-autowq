class WqPilot < Formula
  include Language::Python::Virtualenv

  desc "Local WorldQuant BRAIN research orchestration with gated providers"
  homepage "https://github.com/Octo-o-o-o/autowq"
  url "https://files.pythonhosted.org/packages/e1/e8/6c903382ab2f6f3521589b7149e12abc679baf6c2f3b41407659a489e451/wq_pilot-0.2.3.tar.gz"
  sha256 "f6b077d0c76474aa5ac68ed6f1052ff2d59aa3379e4f2c414ffe72574672fbd0"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      在任意空目录初始化工作区：
        mkdir ~/autowq && cd ~/autowq
        wq onboard
      macOS 桌面菜单栏见 cask：brew install --cask Octo-o-o-o/autowq/worldquant
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wq --version")
  end
end
