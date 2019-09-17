FROM scratchy/nativescript-cli

#RUN npm install -g @vue/cli @vue/cli-init

ENV user codexten

VOLUME /projects

RUN useradd -m -d /home/${user} ${user} \
 && chown -R ${user} /home/${user}

RUN chown -R ${user} /projects

USER ${user}


#CMD tail -f
CMD tail -f /dev/null