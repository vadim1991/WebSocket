In task was used: Spring, Hibernate, Maven and H2(for quick run and test)

Was written integration tests for authentication process (with Spring Test Module).

Also, was created REST for creating testing Profile:
    1. Run server (mvn tomcat7:run-war)
    2. In any REST client enter endpoint http://localhost:8180/profiles
    3. Select method POST
    4. Enter body:

    {
        "email":"some@some.some",
        "password":"12345"
    }

    5. Profile will be created

For testing in browser (was written web socket client on JS)
    1. For start application - run embedded tomcat7 maven plugin(mvn tomcat7:run-war)
    2. Open in browser http://localhost:8180
    3. Click connect
    4. Enter email and password
    5. Click send and get result