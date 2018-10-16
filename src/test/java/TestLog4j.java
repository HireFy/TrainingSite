import org.apache.commons.logging.Log;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class TestLog4j {
    private static Logger log = LogManager.getLogger(TestLog4j.class);
    public static void main(String[] args) {
        log.info("hello world");
    }
}
