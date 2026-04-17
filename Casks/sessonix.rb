cask "sessonix" do
  version "0.10.3"

  on_arm do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_aarch64.dmg"
    sha256 "cbfd4d70785d37aa1f8bcbfb2c52aaab7385aa3d3bb4c233f0a2f4f76d9d3cda"
  end

  on_intel do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_x64.dmg"
    sha256 "d4cb06705f45a303da4c862a1439d5b68e7f1172e34aa4d9be98e6bd53e03547"
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
