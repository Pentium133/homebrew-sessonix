cask "sessonix" do
  version "0.10.0"

  on_arm do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_aarch64.dmg"
    sha256 "a637f50071c8e2aa0c172616a8fea0396cea61f5e8cfc5f4a55e4967aee97123"
  end

  on_intel do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_x64.dmg"
    sha256 "001aeea4c7bee434a5fff03b680a902208a1afc4f2d776d06b017afeffb52867"
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
