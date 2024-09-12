import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class Subsection {
  final String title;
  final String content;
  final TextStyle titleStyle;
  final TextStyle contentStyle;

  Subsection({
    required this.title,
    required this.content,
    this.titleStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
    this.contentStyle = const TextStyle(fontSize: 16.0, height: 1.5),
  });
}

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.screenPadding,
      child: SizedBox(
        width: double.infinity,
        child: (Card(
          color: AppCardStyles.transparentCardBackground,
          shape: AppCardStyles.roundedRectangleBorder2,
          child: Padding(
            padding: AppPaddings.screenPadding,
            child: ListView(
              children: [
                buildContactSection(),
                buildProfessionalExperienceSession(),
                buildAcademicEducationSection(),
                buildComplementaryEducationSection(),
                buildLanguagesSection(),
                buildInformaticSection(),

                // Añadir otras secciones
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget buildProfessionalExperienceSession() {
    return _buildSection(
      title: 'Experiencia Profesional',
      subsections: [
        Subsection(
          title: 'Grupo Aspasia',
          content: '''
                              Formación especializada en herramientas informáticas.
                              - Cursos impartidos: Microsoft OneDrive, Teams, Outlook, Excel.
                              - Empresas: Fundación ONCE, Saint-Gobain, Gonvarri.
                              - Preparación de materiales: Diseño de programas, materiales didácticos y ejercicios prácticos.
                              - Soporte continuo: Atención personalizada, presencial y a distancia.
Fecha: 2024 - Actualmente
                    ''',
        ),
        Subsection(
          title: 'RS-Sport',
          content: '''
Cronometraje deportivo.
- Despliegue de Puntos de Cronometraje: Instalación y configuración de puntos de cronometraje con redes Ethernet y antenas RFID.
- Programación Web: Desarrollo web corporativo con HTML, CSS, JS y aplicación en Python.
Fecha: 2019 - Actualmente
                    ''',
        ),
        Subsection(
            title: 'Alburli S.L. Distribución de alimentación y bebidas',
            content: '''
                              - Telegestión y Contabilidad: Implementación de gestión remota para facturas y albaranes.
                              - Modernización Tecnológica: Actualización de la red corporativa y optimización de procesos.
                              Fecha: 2022 - 2024'''),
        Subsection(
            title:
                '                                Cuerpo de Transmisiones. Ejército de Tierra.',
            content:
                ''' - Clonado de Equipos: Creación de sistema a clonar y configuración de equipos.
                              
                            - Mantenimiento de Servidores: Actualización, resolución de incidencias y copias de seguridad.
                              - Redes: Despliegue de redes de fibra óptica y Ethernet, solución de problemas.
                              - Programación y Helpdesk: Scripts para automatización y soporte técnico.
                              Fecha: 2014 - 2018'''),
        Subsection(
            title:
                'Docente. Clases particulares a estudiantes de Bachillerato y E.S.O.',
            content:
                '''Materias: Informática, matemáticas, física, química, dibujo técnico, inglés.
                              Fecha: 2009 - 2013'''),

        Subsection(
            title:
                '                              Promotor. Azafato – promotor de productos.',
            content: '''- Estudio de mercado de máquinas expendedoras.
                              Empresas: Universo Selección S.L., Manpower Group Solutions S.L.
                              Fecha: 2009-2013')'''),

        Subsection(
            title:
                '                                Técnico de soporte informático.',
            content:
                '''- Formateo y reparación de sistemas a domicilio: Diagnóstico y reparación de hardware y software.
                              - Montaje personalizado de ordenadores: Asesoramiento, montaje y configuración de sistemas.
                              Fecha: 2006 – 2014''')

        // Añadir más subsecciones según sea necesario
      ],
    );
  }

  Widget buildContactSection() {
    return _buildSection(
      title: 'Contacto',
      subsections: [
        Subsection(
          title: '',
          content: '''
Teléfono: 627110280
Correo electrónico: raulvsh@gmail.com
Github: https://github.com/raulvsh
Carné de conducir: B, C, A.
Lugar de residencia: Burgos.
                    ''',
        ),
      ],
    );
  }

  buildAcademicEducationSection() {
    return _buildSection(
      title: 'Formación Académica',
      subsections: [
        Subsection(
            title: '                                Trabajo Fin de Grado',
            content:
                '''                                - Desarrollo de HepApptology como aplicación multiplataforma en Flutter y Dart. Año: 2020
'''),
        Subsection(
            title:
                '                                Grado en Ingeniería de Tecnologías Específicas de Telecomunicación',
            content:
                '''                                - Mención en Telemática. Universidad de Valladolid. Año: 2014-2018

'''),
        Subsection(
            title:
                '                                Curso CCNA Switching & Routing',
            content: '''- Curso de redes CCNA 1: Introducción a redes
                                - Regimiento de Transmisiones Nº 1. Ejército de Tierra, Burgos. Año: 2017''')
      ],
    );
  }

  buildComplementaryEducationSection() {
    return _buildSection(
      title: 'Formación Complementaria',
      subsections: [
        Subsection(
          title: 'Angular',
          content: '''
                    - . Angular, TypeScript. Modalidad online. Actualmente

                    ''',
        ),
        Subsection(
          title: 'Unity',
          content: '''
                              - . Programación en C#. Modalidad online. Año: 2022

                    ''',
        ),
        Subsection(
          title: 'Curso programación Web',
          content: '''
                              - . HTML, CSS, JavaScript. Universidad Politécnica de Madrid. Modalidad online. Año: 2020

                    ''',
        ),
        Subsection(
          title: 'GitHub',
          content: '''
                              - . Universidad Politécnica de Madrid. Modalidad online. Año: 2020

                    ''',
        ),
        Subsection(
          title: 'Flutter',
          content: '''
                              - : Introducción al SDK de Google. Fernando Herrera. Udemy. Año: 2019

                    ''',
        ),
      ],
    );
  }

  buildLanguagesSection() {
    return _buildSection(
      title: 'Contacto',
      subsections: [
        Subsection(
          title: 'Inglés',
          content: '''
                                . Nivel medio – alto.

                    ''',
        ),
        Subsection(
          title: 'Intercambio Lingüístico',
          content: '''
Boston, Estados Unidos de América. Duración: Dos meses. Año: 2004
                    ''',
        ),
      ],
    );
  }

  buildInformaticSection() {
    return _buildSection(
      title: 'Informática',
      subsections: [
        Subsection(
          title: 'Ofimática',
          content: '''
                                - Microsoft Office: Word, Excel, Access, Powerpoint.

                    ''',
        ),
        Subsection(
          title: 'Redes',
          content: '''
                                - Despliegue y configuración de redes de fibra y Ethernet, Firewall, TCP/IP, DHCP, DNS, VoIP.

                    ''',
        ),
        Subsection(
          title: '                                Sistemas Operativos',
          content: '''
                                - Microsoft Windows, GNU/Linux, Mac OS.

                    ''',
        ),
        Subsection(
          title: '                                Lenguajes de programación',
          content: '''
                                - C, C#, Dart, Flutter, Java, JavaScript, Python, Rust.

                    ''',
        ),
        Subsection(
          title: '                                Diseño Web',
          content: '''
                                - HTML, CSS, MySQL, PHP.

                    ''',
        ),
      ],
    );
  }
}

Widget _buildSection({
  required String title,
  required List<Subsection> subsections,
}) {
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
              style: AppTextStyles.title2,
            ),
            const SizedBox(height: 8.0),
            ...subsections.map((subsection) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subsection.title != ''
                        ? Text(
                            subsection.title,
                            style: subsection.titleStyle,
                          )
                        : Container(),
                    const SizedBox(height: 4.0),
                    Text(
                      subsection.content,
                      style: subsection.contentStyle,
                    ),
                    const SizedBox(height: 16.0), // Espacio entre subsecciones
                  ],
                )),
          ],
        ),
      ),
    ),
  );
}