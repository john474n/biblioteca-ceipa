package com.ceiba.biblioteca.calificador;

public class SolicitudPrestarLibroTest {

    private String isbn;
    private String identificacionUsuario;
    private int tipoUsuario;

    public SolicitudPrestarLibroTest(String isbn, String identificacionUsuario, int tipoUsuario) {
        this.isbn = isbn;
        this.identificacionUsuario = identificacionUsuario;
        this.tipoUsuario = tipoUsuario;
    }

    public String getIsbn() {
        return isbn;
    }

    public String getIdentificacionUsuario() {
        return identificacionUsuario;
    }

    public int getTipoUsuario() {
        return tipoUsuario;
    }
}
<dependency>
    <groupId>org.jboss.resteasy</groupId>
    <artifactId>resteasy-client</artifactId>
    <version>3.0.13.Final</version>
    <scope>test</scope>
</dependency>

<!--Librerías para serializar/deserializar json -->
<dependency>
    <groupId>org.jboss.resteasy</groupId>
    <artifactId>resteasy-jackson-provider</artifactId>
    <version>3.0.13.Final</version>
    <scope>test</scope>
</dependency>

<!--Jaxrs API json -->
<dependency>
    <groupId>org.jboss.resteasy</groupId>
    <artifactId>resteasy-json-p-provider</artifactId>
    <version>3.0.13.Final</version>
    <scope>test</scope>
</dependency>

<!--Hamcrest Json -->
<dependency>
    <groupId>uk.co.datumedge</groupId>
    <artifactId>hamcrest-json</artifactId>
    <version>0.2</version>
    <scope>test</scope>
</dependency>

<!-- Plugin para inicializar la BD con comandos sql-->
<!-- Podemos crear un elemento de configuración en la ventana Maven Projects
     de la siguiente forma:
     - desde jbib-rest - Plugins - sql - sql:execute
     - seleccionar con botón derecho "Create 'jbib-rest...
     - editamos el perfil de configuración añadiendo en
       "Command" line el comando "sql:execute@init-database"
     Para ejecutarlo, se hace
     desde jbib-rest - Run Configurations - jbib-rest [sql:execute]
     Hay que cambiar las settings del proyecto para inidicar que la ruta de
     maven es: /usr/local/apache-maven-3.3.3
     (si no no funciona, ya que la versión de maven que incorpora
     IntelliJ es la 3.0.5 y tiene que ser superior a 3.1
      -->
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>sql-maven-plugin</artifactId>
    <version>1.5</version>

    <dependencies>
        <!-- JDBC driver -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.33</version>
        </dependency>
    </dependencies>

    <!-- common configuration shared by all executions -->
    <configuration>
        <driver>com.mysql.jdbc.Driver</driver>
        <url>jdbc:mysql://localhost:3306/biblioteca</url>
        <username>root</username>
        <password>expertojava</password>
    </configuration>

    <executions>
        <execution>
            <id>init-database</id>
            <goals>
                <goal>execute</goal>
            </goals>
            <configuration>
                <srcFiles>
                    <srcFile>src/test/resources/sql/biblioteca.sql</srcFile>
                </srcFiles>
            </configuration>
        </execution>
    </executions>
</plugin>

USE biblioteca;
DELETE FROM Recomendacion;
DELETE FROM Libro;
DELETE FROM Ejemplar;
DELETE FROM Prestamo;
DELETE FROM Usuario;

INSERT INTO Libro(id, titulo, autor,isbn, numPaginas, portadaURI)
VALUES ('1','Patterns Of Enterprise Application Architecture', 'Martin Fowler',
 '0321127420', '533','0321127420.jpg');
INSERT INTO Libro(id, titulo, autor,isbn, numPaginas, portadaURI)
VALUES ('2','Clean Code', 'Robert C. Martin',
 '0132350882', '288','0132350882.jpg');
INSERT INTO Libro(id, titulo, autor,isbn, numPaginas, portadaURI)
VALUES ('3','Test Driven Development', 'Kent Beck',
 '0321146530', '192','0321146530.jpg');

INSERT INTO Recomendacion(id, libro_id,libroRelacionado_id) VALUES ('1','2', '3');
INSERT INTO Recomendacion(id, libro_id,libroRelacionado_id) VALUES ('2','2', '1');
INSERT INTO Recomendacion(id, libro_id,libroRelacionado_id) VALUES ('3','3', '2');

INSERT INTO Ejemplar(id, codigoEjemplar, fechaAdquisicion, libroId)
VALUES ('1', '001', '2014-10-01', '1');
INSERT INTO Ejemplar(id, codigoEjemplar, fechaAdquisicion, libroId)
VALUES ('2', '002', '2014-10-01', '1');
INSERT INTO Ejemplar(id, codigoEjemplar, fechaAdquisicion, libroId)
VALUES ('3', '001', '2014-11-01', '2');
INSERT INTO Ejemplar(id, codigoEjemplar, fechaAdquisicion, libroId)
VALUES ('4', '001', '2014-11-21', '3');

INSERT INTO Usuario(id,tipo,login, nombre, apellido1, apellido2)
VALUES ('1', 'PROFESOR', 'vicente.casamayor', 'Vicente', 'Casamayor', 'Garcia');
INSERT INTO Usuario(id,tipo,login, nombre, apellido1, apellido2)
VALUES ('2', 'ALUMNO', 'antonio.perez', 'Antonio', 'Perez', 'Sierra');
INSERT INTO Usuario(id,tipo,login, nombre, apellido1, apellido2)
VALUES ('3', 'ALUMNO', 'anabel.garcia', 'Anabel', 'Garcia', 'Sierra');

INSERT INTO Prestamo(id,ejemplar_id,usuario_id,fecha,deberiaDevolverseEl)
VALUES ('2', '4', '2', '2014-12-01', '2014-12-05');
INSERT INTO Prestamo(id,ejemplar_id,usuario_id,fecha,deberiaDevolverseEl)
VALUES ('3', '2', '1', '2014-11-01', '2014-11-30');
INSERT INTO Prestamo(id,ejemplar_id,usuario_id,fecha,deberiaDevolverseEl)
VALUES ('4', '3', '1', '2014-11-01', '2014-11-30');

{
  "id": 2,
  "login": "antonio.perez",
  "eMail": null,
  "nombre": "Antonio",
  "apellido1": "Perez",
  "apellido2": "Sierra",
  "multa": {
    "hasta": "2015-12-12"
  },
  "num_prestamos": 1,
  "tipo_usuario": "Alumno",
  "estado": "MULTADO"
}

}
GET http://localhost:8080/jbib-rest/api/usuarios/1/prestamos
Authorization: Basic dmljZW50ZS5jYXNhbWF5b3I6dmljZW50ZQ==
}