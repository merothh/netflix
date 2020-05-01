.class final Lcom/ibm/icu/impl/ResourceBundleWrapper$2;
.super Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$defaultID:Ljava/lang/String;

.field final synthetic val$disableFallback:Z

.field final synthetic val$localeID:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iput-object p4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iput-boolean p5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    iput-object p6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;-><init>(Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V

    return-void
.end method


# virtual methods
.method public load()Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 10

    const-string v0, "failure"

    .line 153
    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v6, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v9, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v6, v1, v7, v8, v9}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v6, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v8, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    const-string v9, ""

    invoke-static {v1, v9, v6, v7, v8}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_0
    const/4 v6, 0x0

    .line 166
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v8, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/ResourceBundle;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 168
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ResourceBundle;

    .line 169
    new-instance v8, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    invoke-direct {v8, v7, v5}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    .line 171
    :try_start_1
    invoke-static {v8, v1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$300(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 173
    :cond_2
    iget-object v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$402(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$502(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    nop

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v8, v5

    .line 180
    :goto_2
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 181
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_3
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 183
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :catch_3
    move-object v8, v5

    :goto_4
    if-eqz v3, :cond_b

    .line 188
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/16 v7, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v4, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;

    invoke-direct {v4, p0, v3}, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;-><init>(Lcom/ibm/icu/impl/ResourceBundleWrapper$2;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    if-eqz v3, :cond_6

    .line 199
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 201
    :try_start_3
    new-instance v3, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    new-instance v7, Ljava/util/PropertyResourceBundle;

    invoke-direct {v7, v4}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7, v5}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 203
    :try_start_4
    invoke-static {v3, v1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$700(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 205
    :cond_5
    iget-object v5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$402(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$502(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-object v8, v3

    goto :goto_7

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_5
    move-object v8, v3

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v3, v8

    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 214
    :catch_6
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    move-exception v1

    move-object v8, v3

    goto :goto_a

    .line 211
    :catch_8
    :goto_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_7

    :catch_9
    nop

    :cond_6
    :goto_7
    if-nez v8, :cond_7

    .line 220
    :try_start_9
    iget-boolean v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 221
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 222
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$800(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 224
    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v5, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v7, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v2, v3, v4, v5, v7}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_8

    :cond_7
    move-object v2, v8

    :goto_8
    if-nez v2, :cond_9

    if-eqz v6, :cond_8

    .line 227
    :try_start_a
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-nez v0, :cond_9

    goto :goto_9

    :catch_a
    move-exception v1

    move-object v8, v2

    goto :goto_a

    :cond_8
    :goto_9
    move-object v8, v1

    goto :goto_b

    :cond_9
    move-object v8, v2

    goto :goto_b

    :catch_b
    move-exception v1

    .line 231
    :goto_a
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_a
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_b
    :goto_b
    if-eqz v8, :cond_c

    .line 238
    invoke-static {v8}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$900(Lcom/ibm/icu/impl/ResourceBundleWrapper;)V

    goto :goto_c

    .line 240
    :cond_c
    invoke-static {}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->access$600()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    :goto_c
    return-object v8
.end method
