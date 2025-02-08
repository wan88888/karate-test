package examples.web;

import com.intuit.karate.junit5.Karate;

import org.junit.jupiter.api.Test;

class WebTest {
    @Karate.Test
    Karate testLogin() {
        return Karate.run("login")
                .relativeTo(getClass())
                .outputHtmlReport(true)
                .reportDir("target/karate-reports");
    }
}