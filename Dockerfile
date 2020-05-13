FROM steamcmd/steamcmd

COPY entrypoint.sh /entrypoint.sh

ENV STEAM_ACCOUNT_NAME=
ENV STEAM_PASSWORD=

ENTRYPOINT ["/entrypoint.sh"]