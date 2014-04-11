Translate contents below.

### English

> public class **InputStreamReader**    
extends Reader  

> An InputStreamReader is a bridge from byte streams to character streams: It reads bytes and decodes them into characters using a specified charset. The charset that it uses may be specified by name or may be given explicitly, or the platform's default charset may be accepted.   

> Each invocation of one of an InputStreamReader's read() methods may cause one or more bytes to be read from the underlying byte-input stream. To enable the efficient conversion of bytes to characters, more bytes may be read ahead from the underlying stream than are necessary to satisfy the current read operation.  

> For top efficiency, consider wrapping an InputStreamReader within a BufferedReader. For example:  

> BufferedReader in  
   = new BufferedReader(new InputStreamReader(System.in));

### Chinese
> 一个 InputStreameReader 是一种连接字节流到字符流的桥梁。它读取字节，然后通过一种特殊的字符集。被使用的字符集可能会给出具体的名称制定，或者明确的给出，或者使用平台的默认字符集。
> 每次调用一个 InputStreamReader 的 read() 方法，可能致使系统读取当前字节输入流的一个或多个字节。为使得字节向字符转换地更有效率，会从当前字节陆中预先读取多余的字节，这样会超过当前必要读取的数目。
> 若使得效率最大化，可以在 BufferedReader 里封装一个 InputStreamReader, 例如：
> BufferReader in = new BufferReader(new InputStreamReader(System.in));
