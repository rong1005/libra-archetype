package ${package}.xutil.jms;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;

import ${package}.entity.User;
import ${package}.modules.test.category.UnStable;
import ${package}.modules.test.log.LogbackListAppender;
import ${package}.modules.test.spring.SpringContextTestCase;
import ${package}.xutil.Threads;

/**
 * JMS异步消息处理测试.
 * @author Libra
 *
 */
@Category(UnStable.class)
@DirtiesContext
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class JmsSimpleTest extends SpringContextTestCase {

	@Autowired
	private NotifyMessageProducer notifyMessageProducer;

	@Test
	public void queueMessage() {
		Threads.sleep(1000);
		LogbackListAppender appender = new LogbackListAppender();
		appender.addToLogger(NotifyMessageListener.class);

		User user = new User();
		user.setName("Libra");
		user.setEmail("rong_1005@163.com");

		notifyMessageProducer.sendQueue(user);
		logger.info("sended message");

		Threads.sleep(1000);
		assertEquals("UserName:Libra, Email:rong_1005@163.com", appender.getFirstMessage());
	}

	@Test
	public void topicMessage() {
		Threads.sleep(1000);
		LogbackListAppender appender = new LogbackListAppender();
		appender.addToLogger(NotifyMessageListener.class);

		User user = new User();
		user.setName("Libra");
		user.setEmail("rong_1005@163.com");

		notifyMessageProducer.sendTopic(user);
		logger.info("sended message");

		Threads.sleep(1000);
		assertEquals("UserName:Libra, Email:rong_1005@163.com", appender.getFirstMessage());
	}
}
