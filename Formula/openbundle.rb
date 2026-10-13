class Openbundle < Formula
  desc "Browser-local iOS bundle analyzer"
  homepage "https://github.com/jacobsapps/OpenBundle"
  license "MIT"
  head "https://github.com/jacobsapps/OpenBundle.git", branch: "main"

  depends_on "python@3.12"

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"
    system python, "scripts/build_web.py"
    pkgshare.install "dist/web"

    (bin/"openbundle").write <<~SH
      #!/bin/bash
      PORT="${1:-8000}"
      (sleep 1 && open "http://localhost:$PORT") &
      exec #{python} -m http.server "$PORT" --directory "#{pkgshare}/web"
    SH
  end

  test do
    assert_predicate pkgshare/"web/index.html", :exist?
  end
end
