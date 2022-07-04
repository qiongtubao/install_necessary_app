./
    - ClashX-1.91.1.dmg(翻墙客户端)

# brew
## python 2.7 (macos 12.4默认不安装python2.x )
```
    brew install pyenv
    pyenv install 2.7.18
    ln -s "${HOME}/.pyenv/versions/2.7.18/bin/python2.7" "${HOMEBREW_PREFIX}/bin/python"
```