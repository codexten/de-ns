FROM scratchy/nativescript-cli

#RUN npm install -g @vue/cli @vue/cli-init

ENV user codexten

VOLUME /projects

RUN useradd -m -d /home/${user} ${user} \
 && chown -R ${user} /home/${user}

RUN chown -R ${user} /projects
VOLUME /usr/local/lib/node_modules

ENV NPM_CONFIG_PREFIX=/home/${user}/.npm-global

USER ${user}

RUN npm install -g gulp-cli sass

#CMD tail -f
CMD tail -f /dev/null