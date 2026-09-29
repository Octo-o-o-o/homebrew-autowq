class WqPilot < Formula
  include Language::Python::Virtualenv

  desc "Local WorldQuant BRAIN research orchestration with gated providers"
  homepage "https://github.com/Octo-o-o-o/autowq"
  url "https://files.pythonhosted.org/packages/96/ab/7e1f85e68cb561142a8c369e32c5a4a350f1bf8a474fbce2ed64ee0fc3fb/wq_pilot-0.2.16.tar.gz"
  sha256 "7a889cf7ecb508b2ea6e15900e4ced05ce64a71bd2b0ef1825fdba5a7f0333a6"
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
