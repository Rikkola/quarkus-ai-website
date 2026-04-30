@Path("/email-me-a-poem")
public class EmailMeAPoemResource {

    private final MyAiService service;

    public EmailMeAPoemResource(MyAiService service) {
        this.service = service;
    }

    @GET
    public String emailMeAPoem() {
        return service.writeAPoem("Quarkus", 4);
    }

}
