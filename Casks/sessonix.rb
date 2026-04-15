cask "sessonix" do
  version "0.9.1"

  on_arm do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_aarch64.dmg"
    sha256 "ddc7242540cdb8ebe61fc9bc6ebf06b9160890fdc1e720c97b1657a1b84c48aa"
  end

  on_intel do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_x64.dmg"
    sha256 "e6ee4d53c2b7322e5f48e6e9338f16eee8ed9618cbcdfe461e567218fb333996"
  end

  name "Sessonix"
  desc "Agent Mission Control — run multiple AI coding agents in parallel"
  homepage "https://github.com/Pentium133/sessonix"

  app "Sessonix.app"

  zap trash: [
    "~/Library/Application Support/com.sessonix.desktop",
    "~/Library/Caches/com.sessonix.desktop",
    "~/Library/WebKit/com.sessonix.desktop",
  ]
end
