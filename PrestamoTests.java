package com.ceiba.biblioteca.calificador;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static org.hamcrest.core.Is.is;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@DirtiesContext(classMode = DirtiesContext.ClassMode.BEFORE_EACH_TEST_METHOD)
@AutoConfigureMockMvc
class PrestamoTests {

    public static final int USUARIO_AFILIADO = 1;
    public static final int USUARIO_EMPLEADO = 2;
    public static final int USUARIO_INVITADO = 3;
    public static final int USUARIO_DESCONOCIDO = 5;

    @Autowired
    private MockMvc mvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Test
    public void prestamoLibroUsuarioAfiliadoDeberiaAlmacenarCorrectamenteYCalcularFechaDeDevolucion() throws Exception {

        MvcResult resultadoLibroPrestado = mvc.perform(
                MockMvcRequestBuilders.post("/prestamo")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("ASDA7884", "974148", USUARIO_AFILIADO))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists())
                .andReturn();


        ResultadoPrestarTest resultadoPrestamo = objectMapper.readValue(resultadoLibroPrestado.getResponse().getContentAsString(), ResultadoPrestarTest.class);

        LocalDate fechaPrestamo = LocalDate.now();
        fechaPrestamo = addDaysSkippingWeekends(fechaPrestamo, 10);
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");


        mvc.perform(MockMvcRequestBuilders
                .get("/prestamo/" + resultadoPrestamo.getId())
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion", is(fechaPrestamo.format(formato))))
                .andExpect(jsonPath("$.isbn", is("ASDA7884")))
                .andExpect(jsonPath("$.identificacionUsuario", is("974148")))
                .andExpect(jsonPath("$.tipoUsuario", is(USUARIO_AFILIADO)));


    }

    @Test
    public void prestamoLibroUsuarioEmpleadoDeberiaAlmacenarCorrectamenteYCalcularFechaDeDevolucion() throws Exception {

        MvcResult resultadoLibroPrestado = mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("AWQ489", "7481545", USUARIO_EMPLEADO))))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists())
                .andReturn();

        ResultadoPrestarTest resultadoPrestamo = objectMapper.readValue(resultadoLibroPrestado.getResponse().getContentAsString(), ResultadoPrestarTest.class);

        LocalDate fechaPrestamo = LocalDate.now();
        fechaPrestamo = addDaysSkippingWeekends(fechaPrestamo, 8);
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");


        mvc.perform(MockMvcRequestBuilders
                .get("/prestamo/" + resultadoPrestamo.getId())
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion", is(fechaPrestamo.format(formato))))
                .andExpect(jsonPath("$.isbn", is("AWQ489")))
                .andExpect(jsonPath("$.identificacionUsuario", is("7481545")))
                .andExpect(jsonPath("$.tipoUsuario", is(USUARIO_EMPLEADO)));


    }

    @Test
    public void prestamoLibroUsuarioInvitadoDeberiaAlmacenarCorrectamenteYCalcularFechaDeDevolucion() throws Exception {

        MvcResult resultadoLibroPrestado = mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "74851254", USUARIO_INVITADO))))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists())
                .andReturn();

        ResultadoPrestarTest resultadoPrestamo = objectMapper.readValue(resultadoLibroPrestado.getResponse().getContentAsString(), ResultadoPrestarTest.class);

        LocalDate fechaPrestamo = LocalDate.now();
        fechaPrestamo = addDaysSkippingWeekends(fechaPrestamo, 7);
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");


        mvc.perform(MockMvcRequestBuilders
                .get("/prestamo/" + resultadoPrestamo.getId())
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion", is(fechaPrestamo.format(formato))))
                .andExpect(jsonPath("$.isbn", is("EQWQW8545")))
                .andExpect(jsonPath("$.identificacionUsuario", is("74851254")))
                .andExpect(jsonPath("$.tipoUsuario", is(USUARIO_INVITADO)));


    }

    @Test
    public void usuarioInvitadoTratandoDePrestarUnSegundoLibroDeberiaRetornarExcepcion() throws Exception {

        mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "1111111111", USUARIO_INVITADO))))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists());

        mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "1111111111", USUARIO_INVITADO))))
                .andDo(print())
                .andExpect(status().is4xxClientError())
                .andExpect(jsonPath("$.mensaje", is("El usuario con identificación 1111111111 ya tiene un libro prestado por lo cual no se le puede realizar otro préstamo")));

    }

    @Test
    public void usuarioNoInvitadoTratandoDePrestarUnSegundoLibroDeberiaPrestarloCorrectamente() throws Exception {

        mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "1111111111", USUARIO_AFILIADO))))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists());

        mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "1111111111", USUARIO_AFILIADO))))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.fechaMaximaDevolucion").exists());

    }

    @Test
    public void prestamoConTipoDeUsuarioNoPermitidoDeberiaRetornarExcepcion() throws Exception {

        mvc.perform(MockMvcRequestBuilders
                .post("/prestamo")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(new SolicitudPrestarLibroTest("EQWQW8545", "1111111111", USUARIO_DESCONOCIDO))))
                .andDo(print())
                .andExpect(status().is4xxClientError())
                .andExpect(jsonPath("$.mensaje", is("Tipo de usuario no permitido en la biblioteca")));
    }



    public static LocalDate addDaysSkippingWeekends(LocalDate date, int days) {
        LocalDate result = date;
        int addedDays = 0;
        while (addedDays < days) {
            result = result.plusDays(1);
            if (!(result.getDayOfWeek() == DayOfWeek.SATURDAY || result.getDayOfWeek() == DayOfWeek.SUNDAY)) {
                ++addedDays;
            }
        }
        return result;
    }
}

<properties>
  ...
  <skipTests>false</skipTests>
  <skipITs>false</skipITs>
</properties>

<plugins>
  ...
  <!-- configuramos el plugin surefire. Por defecto
     se ejecutan los tests unitarios en la fase "test" -->
  <plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>2.19</version>
    <configuration>
        <skipTests>${skipTests}</skipTests>
    </configuration>
  </plugin>

  <plugin>
    <groupId>org.wildfly.plugins</groupId>
    <artifactId>wildfly-maven-plugin</artifactId>
    <version>1.0.2.Final</version>
    <configuration>
      <hostname>localhost</hostname>
      <port>9990</port>
    </configuration>
    <!-- forzamos el despliegue después de empaquetar
            y antes de ejecutar los tests REST -->
    <executions>
      <execution>
        <id>wildfly-deploy</id>
        <phase>pre-integration-test</phase>
        <goals>
           <goal>deploy</goal>
        </goals>
      </execution>
    </executions>
  </plugin>

  <!-- ejecución de la goal failsafe:test
       durante la fase integration-test -->
  <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-failsafe-plugin</artifactId>
      <version>2.19</version>
      <configuration>
          <skipITs>${skipITs}</skipITs>
          <skipTests>false</skipTests>
      </configuration>
      <executions>
          <execution>
              <goals>
                  <goal>integration-test</goal>
                  <goal>verify</goal>
              </goals>
          </execution>
      </executions>
  </plugin>
</plugins>

[
  {
    "id_prestamo": 3,
    "fecha_prestamo": "2014-11-01,00:00",
    "fecha_devolucion": "2014-11-30,00:00",
    "libro": {
      "id": 1
      "self": "http://localhost:8080/jbib-rest/api/libros/1",
      "titulo": "Patterns Of Enterprise Application Architecture",
      "ejemplar_id": 2
    }
  },
  {
    "id_prestamo": 4,
    "fecha_prestamo": "2014-11-01,00:00",
    "fecha_devolucion": "2014-11-30,00:00",
    "libro": {
      "id": 3
      "self": "http://localhost:8080/jbib-rest/api/libros/3",
      "titulo": "Clean Code",
      "ejemplar_id": 3
    }
  }
]

{
  "id_prestamo": 5,
  "fecha_prestamo": "2015-12-17,19:00",
  "fecha_devolucion": "2015-12-24,19:00",
  "libro": {
    "id": "1",
    "resource_uri": "http://localhost:8080/jbib-rest/api/libros/1",
    "ejemplar_id": 1
}


{
 "resultado": "DEVOLUCION_CORRECTA"
 }
 
 {
    "id": 1,
    "self": "http://localhost:8080/jbib-rest/api/libros/1",
    "isbn": "0321127420",
    "titulo": "Patterns Of Enterprise Application Architecture",
    "autor": "Martin Fowler",
    "image": "http://localhost:8080/jbib-rest/media/img/0321127420.png",
    "ejemplares": 4,
    "disponibles": 2
}

[
  {
   "id": 1
   "self": "http://localhost:8080/jbib-rest/api/libros/1",
   "isbn": "0321127420",
   "titulo": "Patterns Of Enterprise Application Architecture",
   "autor": "Martin Fowler",
   "image": "http://localhost:8080/jbib-rest/media/0321127420-small.png",
 },
 {
   "id":2
   "self": "http://localhost:8080/jbib-rest/api/libros/2",
   "isbn": "0132350882",
    "titulo": "Clean code",
    "autor": "Robert C. Martin",
    "image": "http://localhost:8080/jbib-rest/media/0132350882-small.png"
  }
]

package com.bibliotecaweb.biblioteca;

import com.bibliotecaweb.biblioteca.entity.RegionEntity;
import com.bibliotecaweb.biblioteca.entity.UsuarioEntity;
import com.bibliotecaweb.biblioteca.repository.IRolesUsuarioRepository;
import com.bibliotecaweb.biblioteca.repository.IUsuarioRepository;
import com.bibliotecaweb.biblioteca.service.RegionService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Optional;

@SpringBootTest
class BibliotecaApplicationTests {

    @Autowired
    private IUsuarioRepository repo;

    @Autowired
    private BCryptPasswordEncoder encoder;
    @Autowired
    private IRolesUsuarioRepository rol;

    @Autowired
    private RegionService servicioRegion;

    @Test
    public void crearUsuarioTest(){
        UsuarioEntity us = new UsuarioEntity();
        us.setRutUsuario("3-3");
        us.setClave(encoder.encode("123"));
        us.setRol(rol.getOne(3));
        // TODO por verificar rol de usuario
        UsuarioEntity retorno =  repo.save(us);

        assert (retorno.getClave().equalsIgnoreCase(us.getClave()));
    }

    @Test
    public void editarRegion(){
       Optional<RegionEntity> regionOp = servicioRegion.obtenerRegion(5);

       if (regionOp.isPresent()){
           RegionEntity region = regionOp.get();
           region.setIdRegion(5);
           region.setNombreReg("valporro");
           region.setNumeroReg("VVVV");
           servicioRegion.editarRegion(region);
           assert (region.getNombreReg().equals("valporro"));
       }


    }

}
