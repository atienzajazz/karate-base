package assessment;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.jupiter.api.Test;

public class TestParallel {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:assessment/").outputCucumberJson(true).tags("~@ignore").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
