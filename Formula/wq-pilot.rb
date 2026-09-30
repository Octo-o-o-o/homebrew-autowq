class WqPilot < Formula
  include Language::Python::Virtualenv

  desc "Local WorldQuant BRAIN research orchestration with gated providers"
  homepage "https://github.com/Octo-o-o-o/autowq"
  url "https://files.pythonhosted.org/packages/74/24/ad42fdc38153eaa17070a9911ea18649dfc71cafd996a96c6cdd5c2e0f6e/wq_pilot-0.2.18.tar.gz"
  sha256 "d97267cb602e66e64dc4bd948aa4ad84027db197b16976380ccaa8acb4c52fef"
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
