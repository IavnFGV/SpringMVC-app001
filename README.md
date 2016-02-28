# SpringMVC-app001
Full path for creating spring mvc web app

## Greeting
  1. Be carefull: Spring 3.2.x does **NOT** support Java 8, you **need to upgrade** to Spring 4
  2. Be carefull: Intellij IDEA automatically adds namespaces to config xml.
    * you added *<mvc:annotation-driven/>* 
    * IDEA added xmlns:mvc="http://www.springframework.org/schema/cache"
    * you got *magic* error - you have not touched any cache beans at all!
    ```
    org.springframework.beans.factory.BeanCreationException: Error creating bean with name 
    'org.springframework.cache.interceptor.CacheInterceptor#0': Cannot resolve reference to bean 'cacheManager' 
    while setting bean property 'cacheManager'; nested exception is org.springframework.beans.factory.NoSuchBeanDefinitionException: 
    No bean named 'cacheManager' is defined
    ```
    
    * **review** config.xml for any unknown declarations
  3. For correct locale changing localeResolver **MUST** be declared in this way (name = **localeResolver**):
  
    ```
        <bean id="localeResolver" class="org.springframework.web.servlet.i18n.SessionLocaleResolver"
              p:defaultLocale="en_US"/>
    ```
    because:
    
    >In Spring MVC application, if you do not configure the Spring’s LocaleResolver, it will use the default AcceptHeaderLocaleResolver, which does not allow to change the locale. To solve it, try declare a SessionLocaleResolver bean in the Spring bean configuration file, it should be suits in most cases.
    
    otherwise you will get 
    
    ```
    org.springframework.web.util.NestedServletException: Request processing failed; nested exception is java.lang.UnsupportedOperationException: Cannot change HTTP accept header - use a different locale resolution strategy
    ```
    
  4. Due to use Spring 4 you should add this dependencies
  
    ```xml
    
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>2.2.2</version>
        </dependency>
        
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.2.2</version>
        </dependency>
        
    ```
    
    not 
    
    ```
        <dependency>
            <groupId>org.codehaus.jackson</groupId>
            <artifactId>jackson-mapper-asl</artifactId>
            <version>1.4.1</version>
        </dependency>
    ```
    
    because you will get something like this
    
    > org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'org.springframework.web.servlet.view.ContentNegotiatingViewResolver#0' defined in ServletContext resource [/WEB-INF/config/servlet-config.xml]: Initialization of bean failed; nested exception is java.lang.NoClassDefFoundError: com/fasterxml/jackson/databind/ObjectMapper