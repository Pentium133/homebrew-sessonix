cask "sessonix" do
  version "0.9.6"

  on_arm do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_aarch64.dmg"
    sha256 "e9ac3301fa9031393496fc3b15896bb7acebc4485077940155c102918053c858"
  end

  on_intel do
    url "https://github.com/Pentium133/sessonix/releases/download/v#{version}/Sessonix_#{version}_x64.dmg"
    sha256 "b093a508cad5938fbe9eca8bec48cd03f3250ed92848c740c12d545e1656e745"
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
