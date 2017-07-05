class Anyenv < Formula
  desc "anyenv - all in one for **env" if respond_to? :desc
  homepage "https://github.com/riywo/anyenv"

  stable do
    url "https://github.com/tamakiii/anyenv/archive/1.0.0.tar.gz"
    version "1.0.0"
    sha256 "a1caf384b9d401c0c672514302b8fda15aee50aecb6e147f985fdf371be0e30b"
  end
  
  def install
    inreplace "libexec/anyenv", %Q|ANYENV_ROOT="${HOME}/.anyenv"|, %Q|ANYENV_ROOT="#{prefix}"|
    prefix.install Dir["*"]
  end

  test do
    # shell_output("eval \"$(#{bin}/anyenv init -)\" && anyenv version")
  end
end
