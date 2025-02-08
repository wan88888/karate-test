package examples.web.pages;

public class LoginPage {
    public static final String USERNAME_INPUT = "//input[@id='username']";
    public static final String PASSWORD_INPUT = "//input[@id='password']";
    public static final String LOGIN_BUTTON = "//button[@type='submit']";
    public static final String SUCCESS_MESSAGE = "//div[@class='flash success']";
    public static final String ERROR_MESSAGE = "//div[@class='flash error']";

    public static String getLoginUrl() {
        return "login";
    }

    public static String getSuccessMessage() {
        return "You logged into a secure area!";
    }

    public static String getErrorMessage() {
        return "Your username is invalid!";
    }
}