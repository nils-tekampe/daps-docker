from opensuse:42.3

#USER root

RUN mkdir /root/.ssh
COPY ./id_rsa /root/.ssh/id_rsa
COPY ./id_rsa.pub /root/.ssh/id_rsa.pub
RUN chmod 400 /root/.ssh/id_rsa

RUN zypper ar http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_Leap_42.3/ Documentation:Tools

RUN zypper --no-gpg-checks --non-interactive  in --from Documentation:Tools daps

RUN zypper --non-interactive install --auto-agree-with-licenses \
  git \
  nano \