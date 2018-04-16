# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ConfluentOss < Formula
  desc "Install the confluent-oss package"
  homepage "https://www.confluent.io/product/confluent-open-source/"
  url "https://packages.confluent.io/archive/4.0/confluent-oss-4.0.0-2.11.tar.gz"
  sha256 "5cfa68b4368f28bd9231786bb710431394dc14a2b37eecf360e820271ee84f43"
  version "4.0.0"

  depends_on :java
  conflicts_with "kafka", because: "kafka also ships with identically named Kafka related executables"

  def install
    prefix.install "bin"
    rm_rf "#{bin}/windows"
    prefix.install "etc"
    prefix.install "share"
  end

  test do
    system "confluent status"
  end
end

