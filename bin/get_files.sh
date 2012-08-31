#setup your home directory
HOME_DIR=/home/local/HCIT/oawofolu

## First Kettle home needs to be set so that you get the variables set.
export KETTLE_HOME=${HOME_DIR}

## We need to run the next shell script in /home/local/HCIT/oawofolu because it will look for simple-jndi folder under where the script is run from
cd ${HOME_DIR}/cure_etl

export JAVA_HOME=/opt/jdk1.6.0_25

#This command gets files that client has submitted 

${HOME_DIR}/PDI-4.3/kitchen.sh -file=${HOME_DIR}/cure_etl/kettle/GetFiles/GetFiles.kjb -param:PROPERTIES=${HOME_DIR}/cure_etl/conf/PROCESS_XML.properties -level=Detailed -log=${HOME_DIR}/cure_etl/logs/get_files.log

cd ${HOME_DIR}