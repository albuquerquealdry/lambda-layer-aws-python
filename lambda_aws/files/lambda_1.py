import requests
import logging
from datetime import datetime
import kidboo
# Configuração do logger
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger("http_request_api")

def lambda_handler(event, context):
    shared_method = kidboo.metodo_de_exemplo("lambda_1")
    print(shared_method)
    try:
        logger.info("Iniciando lambda_handler")
        response = requests.get(event['host'])
        status_code = response.status_code
        
        logger.info(f"Solicitação HTTP bem-sucedida. Status Code: {status_code}")
        
        return {
            'statusCode': status_code,
            'body': f"Status: {status_code}"
        }
    except Exception as e:
        logger.error(f"Erro ao fazer a solicitação: {str(e)}")
        return {
            'statusCode': 500,
            'body': f"Erro ao fazer a solicitação: {str(e)}"
        }