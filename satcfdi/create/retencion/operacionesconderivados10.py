from decimal import Decimal
from datetime import datetime, date, time
from collections.abc import Sequence
from ... import CFDI, XElement, ScalarMap


class Operacionesconderivados(CFDI):
    """
    Complemento para incorporar información de las Operaciones Financieras Derivadas de Capital.
    """
    tag = '{http://www.sat.gob.mx/esquemas/retencionpago/1/operacionesconderivados}Operacionesconderivados'
    version = '1.0'
    
    def __init__(
            self,
            mont_gan_acum: Decimal | int,
            mont_perd_ded: Decimal | int,
    ): 
        """
        Complemento para incorporar información de las Operaciones Financieras Derivadas de Capital.
        
        :param mont_gan_acum: Atributo requerido para expresar el monto de la ganancia acumulable.
        :param mont_perd_ded: Atributo requerido para expresar el monto de la pérdida deducible.
        """
        
        super().__init__({
            'Version': self.version,
            'MontGanAcum': mont_gan_acum,
            'MontPerdDed': mont_perd_ded,
        })
        

