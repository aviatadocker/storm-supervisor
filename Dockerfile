FROM aviata/storm

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

RUN date -u +"%Y-%m-%d %H:%M%S?" && chmod +x /usr/bin/config-supervisord.sh
RUN date -u +"%Y-%m-%d %H:%M%S?" && sudo /usr/bin/config-supervisord.sh supervisord
RUN date -u +"%Y-%m-%d %H:%M%S?" && sudo /usr/bin/config-supervisord.sh logviewer
CMD /usr/bin/start-supervisor.sh
