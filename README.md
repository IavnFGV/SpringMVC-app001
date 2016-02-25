# SpringMVC-app001
Full path for creating spring mvc web app

## Greeting
  1. Be carefull: Spring 3.2.x does **NOT** support Java 8, you **need upgrade** to Spring 4
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
