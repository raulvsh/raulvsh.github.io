import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
            width: double.infinity,
            child: (Card(
              color: AppCardStyles.transparentCardBackground,
              child: Padding(
                padding: AppCardStyles.homeCardPadding,
                child: ListView(
                  children: [
                    _buildSection(
                      title: 'Contacto',
                      content: '''
Teléfono: 627110280
Correo electrónico: raulvsh@gmail.com
Github: https://github.com/raulvsh
Carné de conducir: B, C, A.
Lugar de residencia: Burgos.
''',
                    ),
                    _buildSection(
                      title: 'Experiencia Profesional',
                      content: '''
Grupo Aspasia. Formación especializada en herramientas informáticas.
- Cursos impartidos: Microsoft OneDrive, Teams, Outlook, Excel.
- Empresas: Fundación ONCE, Saint-Gobain, Gonvarri.
- Preparación de materiales: Diseño de programas, materiales didácticos y ejercicios prácticos.
- Soporte continuo: Atención personalizada, presencial y a distancia.
Fecha: 2024 - Actualmente

RS-Sport. Cronometraje deportivo.
- Despliegue de Puntos de Cronometraje: Instalación y configuración de puntos de cronometraje con redes Ethernet y antenas RFID.
- Programación Web: Desarrollo web corporativo con HTML, CSS, JS y aplicación en Python.
Fecha: 2019 - Actualmente

Alburli S.L. Distribución de alimentación y bebidas.
- Telegestión y Contabilidad: Implementación de gestión remota para facturas y albaranes.
- Modernización Tecnológica: Actualización de la red corporativa y optimización de procesos.
Fecha: 2022 - 2024

Cuerpo de Transmisiones. Ejército de Tierra.
- Clonado de Equipos: Creación de sistema a clonar y configuración de equipos.
- Mantenimiento de Servidores: Actualización, resolución de incidencias y copias de seguridad.
- Redes: Despliegue de redes de fibra óptica y Ethernet, solución de problemas.
- Programación y Helpdesk: Scripts para automatización y soporte técnico.
Fecha: 2014 - 2018

Docente. Clases particulares a estudiantes de Bachillerato y E.S.O.
Materias: Informática, matemáticas, física, química, dibujo técnico, inglés.
Fecha: 2009 - 2013

Promotor. Azafato – promotor de productos.
- Estudio de mercado de máquinas expendedoras.
Empresas: Universo Selección S.L., Manpower Group Solutions S.L.
Fecha: 2009-2013

Técnico de soporte informático.
- Formateo y reparación de sistemas a domicilio: Diagnóstico y reparación de hardware y software.
- Montaje personalizado de ordenadores: Asesoramiento, montaje y configuración de sistemas.
Fecha: 2006 – 2014
''',
                    ),
                    _buildSection(
                      title: 'Formación Académica',
                      content: '''
Trabajo Fin de Grado
- Desarrollo de HepApptology como aplicación multiplataforma en Flutter y Dart. Año: 2020

Grado en Ingeniería de Tecnologías Específicas de Telecomunicación
- Mención en Telemática. Universidad de Valladolid. Año: 2014-2018

Curso CCNA Switching & Routing
- Curso de redes CCNA 1: Introducción a redes
- Regimiento de Transmisiones Nº 1. Ejército de Tierra, Burgos. Año: 2017
''',
                    ),
                    _buildSection(
                      title: 'Formación Complementaria',
                      content: '''
- Angular. Angular, TypeScript. Modalidad online. Actualmente
- Unity. Programación en C#. Modalidad online. Año: 2022
- Curso programación Web. HTML, CSS, JavaScript. Universidad Politécnica de Madrid. Modalidad online. Año: 2020
- GitHub. Universidad Politécnica de Madrid. Modalidad online. Año: 2020
- Flutter: Introducción al SDK de Google. Fernando Herrera. Udemy. Año: 2019
''',
                    ),
                    _buildSection(
                      title: 'Idiomas',
                      content: '''
Inglés. Nivel medio – alto.
- Intercambio Lingüístico. Boston, Estados Unidos de América. Duración: Dos meses. Año: 2004
''',
                    ),
                    _buildSection(
                      title: 'Informática',
                      content: '''
Ofimática
- Microsoft Office: Word, Excel, Access, Powerpoint.

Redes
- Despliegue y configuración de redes de fibra y Ethernet, Firewall, TCP/IP, DHCP, DNS, VoIP.

Sistemas Operativos
- Microsoft Windows, GNU/Linux, Mac OS.

Lenguajes de programación
- C, C#, Dart, Flutter, Java, JavaScript, Python, Rust.

Diseño Web
- HTML, CSS, MySQL, PHP.
''',
                    ),
                  ],
                ),
              ),
            ))));
  }

  Widget _buildSection({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
