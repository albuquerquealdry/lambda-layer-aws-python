import logging
import kidboo
# Configuração do logger
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger("http_request_api")

def lambda_handler(event, context):

    try:
        shared_method = kidboo.metodo_de_exemplo("lambda_2")
        print(shared_method)
        
        return {
            'message': shared_method
        }
    except Exception as e:
        logger.error(f"Erro ao fazer a solicitação: {str(e)}")
        return {
            'statusCode': 500,
            'body': f"Erro ao fazer a solicitação: {str(e)}"
        }