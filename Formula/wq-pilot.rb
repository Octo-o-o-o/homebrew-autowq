class WqPilot < Formula
  include Language::Python::Virtualenv

  desc "Local WorldQuant BRAIN research orchestration with gated providers"
  homepage "https://github.com/Octo-o-o-o/autowq"
  url "https://files.pythonhosted.org/packages/d3/8e/d52fcb217340f600081817bc0c82262c862705df74698c0509bfc5cf7855/wq_pilot-0.2.4.tar.gz"
  sha256 "fc5f2a272986b36ea8fa8f1560bc42e93b9fd40eb6762f56a7e9e3ac93ac8875"
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
