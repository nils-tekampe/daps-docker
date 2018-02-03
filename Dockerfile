from opensuse:42.3

# Taking care of the SSH key
RUN mkdir /root/.ssh
COPY ./id_rsa /root/.ssh/id_rsa
COPY ./id_rsa.pub /root/.ssh/id_rsa.pub
RUN chmod 400 /root/.ssh/id_rsa

# Installing DAPS
RUN zypper ar http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_Leap_42.3/ Documentation:Tools
RUN zypper --no-gpg-checks --non-interactive  in --from Documentation:Tools daps

# We need to increase the memory for Java (to allow for big documents)
RUN export _JAVA_OPTIONS=-Xmx4096m

# Installing a few handy tools 
RUN zypper --non-interactive install --auto-agree-with-licenses \
  git \
  mc \
  nano \