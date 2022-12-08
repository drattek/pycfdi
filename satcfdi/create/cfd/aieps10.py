from decimal import Decimal
from datetime import datetime, date, time
from collections.abc import Sequence
from ... import CFDI, XElement, ScalarMap


class AcreditamientoIEPS(CFDI):
    """
    Nodo requerido para expresar los detalles de la descripción del concepto para efectos de poder determinar el monto del estímulo aplicable.
    """
    tag = '{http://www.sat.gob.mx/acreditamiento}acreditamientoIEPS'
    version = '1.0'
    
    def __init__(
            self,
            tar: str,
    ): 
        """
        Nodo requerido para expresar los detalles de la descripción del concepto para efectos de poder determinar el monto del estímulo aplicable.
        
        :param tar: Atributo requerido para expresar la clave de la Terminal de Almacenamiento y Reparto (CVE TAR), conforme al catálogo publicado en la página de Internet del SAT, mismo que servirá para identificar la cuota por litro conforme a las tablas que publique la Secretaría de Hacienda y Crédito Público para determinar el monto del estímulo fiscal.
        """
        
        super().__init__({
            'Version': self.version,
            'TAR': tar,
        })
        

