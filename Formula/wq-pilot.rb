class WqPilot < Formula
  include Language::Python::Virtualenv

  desc "Local WorldQuant BRAIN research orchestration with gated providers"
  homepage "https://github.com/Octo-o-o-o/autowq"
  url "https://files.pythonhosted.org/packages/38/c5/f92152883487abd4b3a2b34a26171b32451950ebc3b325a1f7a50cd35b1d/wq_pilot-0.2.14.tar.gz"
  sha256 "0782a6a107d27b96b5d0b7fd6dc58737e9e57bbcb5b96ae874f92f7f0891dcb9"
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
