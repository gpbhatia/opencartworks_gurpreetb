package util;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import org.apache.log4j.Logger;

import static com.sun.jna.Platform.isMac;
import static com.sun.jna.Platform.isWindows;
import static org.apache.log4j.Logger.*;


public class DriverUtil {
    public static EventFiringWebDriver driver;
    private static String Firefox;
    private static String Chrome;
    private String Mobile;
    private  String browserName;


    public EventFiringWebDriver getDriver() {
        setDriver();
        return driver;
    }

   private static final Logger LOGGER;

    static {
        LOGGER = getLogger(DriverUtil.class);
    }

    private static String userPath = System.getProperty("user.dir");
    private static String OS = System.getProperty("os.name").toLowerCase();

    public void setDriver() {
        if (driver == null) {
            if (Chrome.equals("yes")) {
                setDriverPathForBrowser("chrome");
                if (isWindows()) {
                    ChromeOptions options = new ChromeOptions();
                    options.setBinary(userPath + "/src/test/resources/Windows/chromedriver.exe");
                    driver = new EventFiringWebDriver(new ChromeDriver(options));
                } else {
                    driver = new EventFiringWebDriver(new ChromeDriver());
                }
                driver.manage().window().maximize();
               // driver.get("http://opencart.opencartworks.com/themes/so_emarket/layout5/");
         driver.navigate().to("http://opencart.opencartworks.com/themes/so_emarket/layout5/");
                if (Mobile.equals("yes")) {
                    driver.manage().window().setSize(new Dimension(325, 521));
                }
            }
            if (Firefox.equals("yes")) {
                setDriverPathForBrowser("firefox");
                driver = new EventFiringWebDriver(new FirefoxDriver());
                driver.manage().window().maximize();
            }
        }
    }

    private void setDriverPathForBrowser(String browserName) {
        String s = browserName.toLowerCase();
        if (s.equals("chrome")) {
            if (isMac()) {
                System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/MAC/chromedriver");
            } else if (isLinux()) {
                System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/Ubuntu/chromedriver.exe");
            } else {
                System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/Windows/chromedriver.exe");
            }
        }
        String s1 = browserName.toLowerCase();
        if (s1.equals("firefox")) {
            if (isMac()) {
                System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/MAC/geckodriver");
            } else if (isLinux()) {
                System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/Ubuntu/gecko.exe");
            } else {
                System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/Windows/gecko.exe");
            }


        }
    }
    private boolean isLinux()
    { return (OS.indexOf("Linux") >= 0);


    }

    public void closeDriver(){
        driver.quit();
    }
    public boolean isMAC(){
        return (OS.indexOf("MAC") >= 0);    }

}


