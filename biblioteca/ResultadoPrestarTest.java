package com.ceiba.biblioteca.calificador;

public class ResultadoPrestarTest {
    private int id;
    private String fechaMaximaDevolucion;

    public int getId() {
        return id;
    }

    public String getFechaMaximaDevolucion() {
        return fechaMaximaDevolucion;
    }

    public void setFechaMaximaDevolucion(String fechaMaximaDevolucion) {
        this.fechaMaximaDevolucion = fechaMaximaDevolucion;
    }

    public void setId(int id) {
        this.id = id;
    }
}
package org.expertojava.jbibrest.rest;
...

public class UsuarioTestsIT {
...

@Test
public void consultarUsuarioNORegistrado() throws Exception {
  inicializamos_BD_con_datos("/dbunit/dataset3-rest.xml");

  String login_esperado = "vicente.casamayor";
  String mail_esperado = null;

  JsonObject respuesta_esperada =
          Json.createObjectBuilder()
                .add("status", "Unauthorized")
                .add("code", 401)
                .add("message", "El usuario no es el logueado")
                .build();

  Response respuesta = this.client
      .target("http://localhost:8080/jbib-rest/api/usuarios/roberto.garcia")
      .request(MediaType.APPLICATION_JSON)
      .header("Authorization", "Basic dmljZW50ZS5jYXNhbWF5b3I6dmljZW50ZQ==")
      .get();

  String respuesta_real= respuesta.readEntity(JsonObject.class).toString();

  //Comprobamos que recibimos el mensaje de error correcto
  Assert.assertThat(respuesta_real,
            sameJSONAs(respuesta_esperada.toString())
                    .allowingExtraUnexpectedFields()
                    );
}
}

@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd,HH:00", timezone="CET")
public Date fecha;

<!--Librería para serializar el tipo Date a "yyy-MM-dd" -->
<dependency>
    <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-annotations</artifactId>
    <version>2.6.4</version>
    <scope>provided</scope>
</dependency>