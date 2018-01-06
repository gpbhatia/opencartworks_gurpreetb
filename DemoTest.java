import org.junit.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

public class DemoTest {

    public static WebDriver driver;

    public static WebDriver getDriver()
    {
        return driver;
    }


   // @BeforeClass
    @Before
    public static  void openBrowser()
    {
        System.out.println("starting the browser");
         //driver.get(AutomationConstants.URL);//open
        driver.get("http://opencart.opencartworks.com/themes/so_emarket/layout5/");
        //FOR SET TIME OUT
        driver.manage().timeouts().implicitlyWait(AutomationConstants.MAX_TIMEOUTS, TimeUnit.SECONDS);

    }

   // @AfterClass
    @After
    public static void closeBrowser()
    {
        System.out.println("I am in closing");
        driver.quit();
    }
}









