#setup your home directory
HOME_DIR=/home/local/HCIT/oawofolu

## First Kettle home needs to be set so that you get the variables set.
export KETTLE_HOME=${HOME_DIR}

## We need to run the next shell script in /home/madhava because it will look for simple-jndi folder under where the script is run from
cd ${HOME_DIR}/cure_etl/

##This command runs the full ETL to populate DWH Database
${HOME_DIR}/PDI-4.3/kitchen.sh -file=${HOME_DIR}/cure_etl/kettle/PreProcess/Validate.kjb -param:PROPERTIES=${HOME_DIR}/cure_etl/conf/PROCESS_XML.properties -level=Detailed -log=${HOME_DIR}/cure_etl/logs/validate.log

cd ${HOME_DIR}