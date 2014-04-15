### Foreword Things
1. v0, temperature in Fahrenheit format
2. v1, temperature in Celsius format

### Java Code
    
	System.out.printf("temp_f = %d, temp_c = %.2f\n", temp_f, temp_c);
### Smali Code
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "temp_f = %d, temp_c = %.2f\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

### Key Statement
1. new-array v4, v4, [Ljava/lang/Object;  
  (1) **Prototype: ** new-array vx,vy,type_id  
  (2) **Description: ** Generates a new array of type_id type and vy element size and puts the reference to the array into vx.
2. aput-object v0, v4, v5  
  (1) **Prototype: ** aput-object vx,vy,vz  
  (2) **Description: ** Puts the object reference value in vx into an element of an object reference array. The element is indexed by vz, the array object is referenced by vy.

### Pseudo-Code Process
1. Object v2 = System.out;
2. const-string v3 = "temp_f = %d, temp_c = %.2f\n";
3. Object[] v4 = new Object[2];

4. v0 = Integer.valueOf(v0);
5. v4[0] = v0;

6. v1 = Float.valueOf(v1);
7. v4[1] = v1;

8. (System.out)v2.printf(v3, v4);
