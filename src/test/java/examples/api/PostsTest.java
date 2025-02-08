package examples.api;

import com.intuit.karate.junit5.Karate;

class PostsTest {
    @Karate.Test
    Karate testPosts() {
        return Karate.run("posts")
                .relativeTo(getClass())
                .outputHtmlReport(true)
                .reportDir("target/karate-reports");
    }
}