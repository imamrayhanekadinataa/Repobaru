package starter.stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.user.Get;
import starter.user.Post;
import starter.user.PostGenerateToken;

public class UserStep {

    public String userId, token;

    @Steps
    Get get;

    @Steps
    Post post;

    @Steps
    PostGenerateToken postGenerateToken;

    @Given("I set an endpoint for GET detail user")
    public void iSetAnEndpointForGETDetailUser() {
        get.setAnEndpointForGet(this.userId);
    }

    @When("I request GET detail user")
    public void iRequestGETDetailUser() {
        get.requestGetDetailUser(this.userId, this.token);
    }

    @Then("I validate the status code is 200")
    public void iValidateTheStatusCodeIs200() {
        get.validateStatusCode(200);
    }

    @And("validate the data detail")
    public void validateTheDataDetail() {
        get.validateDataDetail(this.userId);
    }

    @Given("I set an endpoint for POST new user")
    public void iSetAnEndpointForPOSTNewUser() {
        post.setPostEndpoint();
    }

    @When("I request POST detail user")
    public void iRequestPOSTDetailUser() {
        post.requestPostDetailUser();
    }

    @Then("I validate the status code is 201")
    public void iValidateTheStatusCodeIs201() { get.validateStatusCode(201); }

    @And("validate the data detail after create user")
    public void validateTheDataDetailAfterCreateUser() {
        post.validateDataDetail();
    }

    @And("get userId for other request")
    public void getUserIdForOtherRequest() {
        this.userId = post.getUserId();
    }

    @Given("I set an endpoint for POST generate token")
    public void iSetAnEndpointForPOSTGenerateToken() {
        postGenerateToken.setEndpointForGenerate();
    }

    @When("I request POST generate token")
    public void iRequestPOSTGenerateToken() {
        postGenerateToken.requestPostGenerateToken();
    }
    @When("I request POST generate token with null username and password")
    public void iRequestPOSTGenerateTokenInvalid() {
        postGenerateToken.requestPostGenerateTokenInvalid();
    }
    @And("validate the data detail after generate token")
    public void validateTheDataDetailAfterGenerateToken() {
        postGenerateToken.validateDataDetailGenerateToken();
    }
    @And("validate the data detail after generate token failed")
    public void validateTheDataDetailAfterGenerateTokenFailed(){
        postGenerateToken.validateDataDetailTokenFailed();
    }

    @And("get token for other request")
    public void getTokenForOtherRequest() {
        this.token = postGenerateToken.getToken();
    }

    @When("I request POST detail user with invalid password")
    public void iRequestPOSTDetailUserWithInvalidPassword() {
        post.requestPostInvalid();
    }

    @Then("I validate the status code is 400")
    public void iValidateTheStatusCodeIs400() {get.validateStatusCode(400);}

    @And("validate the data detail after failed create user")
    public void validateTheDataDetailAfterFailedCreateUser() {
        post.validateDataDetailFailed();
    }
    @Given("I set an endpoint for POST authorized user")
    public void iSetAnEndpointForPOSTAuthUser() {
        post.setPostEndpointAuth();
    }
    @When("I request POST detail user auth")
    public void iRequestPOSTDetailUserAuth() {
        post.requestPostDetailUserAuth();
    }
    @When("I request POST detail user auth with null email and password")
    public void iRequestPOSTDetailUserAuthWithNullEmailAndPassword(){
        post.requestPostDetailUserAuthWithNullEmailAndPassword();
    }
    @And("validate the data detail after authorized")
    public void validateTheDataDetailAfterAuthorized(){
        post.validateDataDetailAfterAuthorized();
    }
    @Then("I validate the status code for authorize is 400")
    public void iValidateTheStatusCodeforAuthIs400() {get.validateStatusCode(400);}
}