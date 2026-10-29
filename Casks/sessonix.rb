cask "sessonix" do
  version "0.16.0"

  on_arm do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_aarch64.dmg"
    sha256 "aac228e9d005d7ac5ccb477bc786a1211664b205bce22f6d2737298c3fddce0e"
  end

  on_intel do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_x64.dmg"
    sha256 "1d766c001d46cf20f6a84298ec15cc0a4bfc836f983db82e716b231badf723dc"
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
