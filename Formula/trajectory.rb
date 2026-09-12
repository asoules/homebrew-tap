class Trajectory < Formula
  desc "Local performance review for Codex tasks"
  homepage "https://github.com/asoules/trajectory"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/asoules/trajectory/releases/download/v0.1.0/trajectory_darwin_arm64.tar.gz"
      sha256 "2aa10c455787893a7803de4532b07c88f8fc1b2b2fb900207a0d94fd81008654"
    else
      url "https://github.com/asoules/trajectory/releases/download/v0.1.0/trajectory_darwin_amd64.tar.gz"
      sha256 "b862ce17765968ec08d236284a2155d17d05d100b16c9bd17ffa6704c85aa2c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/asoules/trajectory/releases/download/v0.1.0/trajectory_linux_arm64.tar.gz"
      sha256 "70b1f78284b428eaaa8a93cd5273fb90dbe947ef81c9bc14f84a869a151e71a1"
    else
      url "https://github.com/asoules/trajectory/releases/download/v0.1.0/trajectory_linux_amd64.tar.gz"
      sha256 "6f970f507a3528af81afa8c2a22acf957f4b362b1015a15febe90580e577220a"
    end
  end

  def install
    bin.install "trajectory"
  end

  test do
    assert_match "trajectory v#{version}", shell_output("#{bin}/trajectory version")
  end
end
