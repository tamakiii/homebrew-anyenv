class Anyenv < Formula
  desc "anyenv - all in one for **env" if respond_to? :desc
  homepage "https://github.com/riywo/anyenv"

	stable do
    head "https://github.com/riywo/anyenv.git"
    version "5693de4"
  end

  test do
    shell_output("eval \"$(#{bin}/anyenv init -)\" && anyenv version")
  end
end
