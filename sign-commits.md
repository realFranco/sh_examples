# sing commits

> https://docs.github.com/en/authentication/managing-commit-signature-verification

> https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#gpg-commit-signature-verification

To sign commits using GPG and have those commits verified on GitHub, follow these steps:

brew install gpg

gpg --list-secret-keys --keyid-format=long

No `gpg` key?
> https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

1: RSA and RSA
4096: size
0: not expire
Franco Gil
f97gp1@gmail.com
coolsisifo*: passphrase

gpg --list-secret-keys --keyid-format=long

sec   rsa4096/7DA69969F749CA45 2024-03-30 [SC]
      BB99C784CC684A5CCC50F77A7DA69969F749CA45
uid                 [ultimate] Franco Gil (github-gpg-franco-gil-key) <f97gp1@gmail.com>
ssb   rsa4096/C64EC99120B296D1 2024-03-30 [E]

gpg --armor --export 7DA69969F749CA45

Add the gpg key on the GutHub account:

> https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account

After add the gpg key, tell to GitHub to use the key:

> https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key

Add the gpg key ID

git config --global user.signingkey 7DA69969F749CA45

Alternatively add the gpg subkey ID

git config --global user.signingkey C64EC99120B296D1!

Sign all commit by default

git config --global commit.gpgsign true

if [ -r ~/.zshrc ]; then echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zprofile; fi


git commit -S -m 'pydocstyle: add page'

must be the same

git config --get-all user.name
git config --get-all user.email
gpg -K --keyid-format SHORT


git config --global user.signingkey

git config --global gpg.program $(which gpg)

git config --global commit.gpgsign true

git config --list


git push --set-upstream origin add-pydocstyle-pag