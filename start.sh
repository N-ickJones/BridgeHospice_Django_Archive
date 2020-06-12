

type=$1


if [[ -z $type ]]; then
	echo "type not specified"
    exit 1;
fi

if [[ $type == "pycharm" || $type == "all" ]]; then
  echo "opening pycharm";
  gnome-terminal --tab --title="Pycharm" -- bash -c 'cd app;sh /opt/pycharm*/bin/pycharm.sh; exec bash;'
fi

if [[ $type == "sass" || $type == "all" ]]; then
  echo "opening sass";
  gnome-terminal --tab --title="Sass" -- bash -c 'cd app/bridge_cms/static/bootstrap/;sass --watch bootstrap.scss:bootstrap.min.css --style compressed;exec bash;'
fi


if [[ $type == "docker" || $type == "all" ]]; then
   echo "opening docker"
   gnome-terminal --tab --title="Docker" -- bash -c 'systemctl restart docker;docker-compose -f dev.yml up --build;exec bash;'
fi



