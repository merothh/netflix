.class public Lo/DHGenParameterSpec;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x1

.field private static d:I

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/DHGenParameterSpec;->e:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;>;)",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {}, Lo/IntEvaluator;->c()Lo/IntEvaluator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/IntEvaluator;->e(Ljava/lang/String;)Lo/DESedeKeySpec;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 368
    new-instance p0, Lo/DHParameterSpec;

    new-instance p1, Lo/DHGenParameterSpec$10;

    invoke-direct {p1, v0}, Lo/DHGenParameterSpec$10;-><init>(Lo/DESedeKeySpec;)V

    invoke-direct {p0, p1}, Lo/DHParameterSpec;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 375
    sget-object v0, Lo/DHGenParameterSpec;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    sget-object p1, Lo/DHGenParameterSpec;->e:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/DHParameterSpec;

    return-object p0

    .line 379
    :cond_2
    new-instance v0, Lo/DHParameterSpec;

    invoke-direct {v0, p1}, Lo/DHParameterSpec;-><init>(Ljava/util/concurrent/Callable;)V

    .line 380
    new-instance p1, Lo/DHGenParameterSpec$1;

    invoke-direct {p1, p0}, Lo/DHGenParameterSpec$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/DHParameterSpec;->a(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    .line 389
    new-instance p1, Lo/DHGenParameterSpec$5;

    invoke-direct {p1, p0}, Lo/DHGenParameterSpec$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/DHParameterSpec;->c(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    .line 395
    sget-object p1, Lo/DHGenParameterSpec;->e:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :try_start_1
    sget v2, Lo/DHGenParameterSpec;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    :try_start_2
    sput v3, Lo/DHGenParameterSpec;->d:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    sget v2, Lo/DHGenParameterSpec;->d:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lo/DHGenParameterSpec;->a:I

    rem-int/2addr v2, v3

    const/16 v4, 0x32

    if-nez v2, :cond_0

    const/16 v2, 0x32

    goto :goto_0

    :cond_0
    const/16 v2, 0x54

    :goto_0
    const-string v5, "d"

    const/16 v6, 0x11

    const/16 v7, 0x7db6

    const-string v8, "endsWith"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v2, v4, :cond_1

    :try_start_3
    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v11

    .line 115
    const-class v1, Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v4, v11

    invoke-virtual {v1, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    new-array v2, v11, [Ljava/lang/Object;

    .line 116
    aput-object v1, v2, v10

    const-class v1, Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v4, v11

    invoke-virtual {v1, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :goto_1
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v10

    aput-object p0, v2, v11

    invoke-static {v7, v6, v11}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array p1, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/AssetManager;

    aput-object v4, p1, v11

    const-class v4, Ljava/lang/String;

    aput-object v4, p1, v10

    invoke-virtual {p0, v5, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lo/DHGenParameterSpec;->d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 115
    sget p1, Lo/DHGenParameterSpec;->a:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lo/DHGenParameterSpec;->d:I

    rem-int/2addr p1, v3

    return-object p0

    :catchall_1
    move-exception p0

    .line 116
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0

    .line 118
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v10

    aput-object p0, v1, v11

    invoke-static {v7, v6, v11}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array p1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/content/res/AssetManager;

    aput-object v2, p1, v11

    const-class v2, Ljava/lang/String;

    aput-object v2, p1, v10

    invoke-virtual {p0, v5, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {p0, v0}, Lo/DHGenParameterSpec;->d(Ljava/io/InputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    sget p1, Lo/DHGenParameterSpec;->d:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    :try_start_b
    sput v0, Lo/DHGenParameterSpec;->a:I

    rem-int/2addr p1, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_5

    .line 116
    :try_start_c
    array-length p1, v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    .line 0
    throw p0

    :cond_5
    return-object p0

    :catch_0
    move-exception p0

    .line 116
    throw p0

    :catchall_3
    move-exception p0

    .line 118
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    throw p1

    :cond_6
    throw p0

    .line 115
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 118
    throw p1

    :cond_7
    throw p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    .line 120
    new-instance p1, Lo/GCMParameterSpec;

    invoke-direct {p1, p0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lo/GCMParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-static {p0}, Lo/aqn;->d(Ljava/io/InputStream;)Lo/aqp;

    move-result-object v0

    invoke-static {v0}, Lo/aqn;->a(Lo/aqp;)Lo/aqm;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e(Lo/aqm;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DHGenParameterSpec;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 188
    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    .line 190
    :cond_1
    throw p1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lo/DHGenParameterSpec;->b(Ljava/lang/String;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 42
    sget-object v0, Lo/DHGenParameterSpec;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lo/DHParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 133
    invoke-static {p1}, Lo/DHGenParameterSpec;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/DHGenParameterSpec$2;

    invoke-direct {v1, p0, p1}, Lo/DHGenParameterSpec$2;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lo/DHGenParameterSpec;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lo/DHParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lo/DHGenParameterSpec$3;

    invoke-direct {v1, p0, p1}, Lo/DHGenParameterSpec$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/DHGenParameterSpec;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 240
    invoke-static {v0}, Lo/aqn;->d(Ljava/io/InputStream;)Lo/aqp;

    move-result-object p0

    invoke-static {p0}, Lo/aqn;->a(Lo/aqp;)Lo/aqm;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e(Lo/aqm;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object p0

    invoke-static {p0, p1}, Lo/DHGenParameterSpec;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/DHParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Lo/DHGenParameterSpec$8;

    invoke-direct {v0, p0, p1}, Lo/DHGenParameterSpec$8;-><init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/DHGenParameterSpec;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-static {p0}, Lo/Px;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lo/DESedeKeySpec;

    move-result-object v0

    .line 263
    invoke-static {}, Lo/IntEvaluator;->c()Lo/IntEvaluator;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lo/IntEvaluator;->c(Ljava/lang/String;Lo/DESedeKeySpec;)V

    .line 264
    new-instance p1, Lo/GCMParameterSpec;

    invoke-direct {p1, v0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 269
    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    :try_start_1
    new-instance v0, Lo/GCMParameterSpec;

    invoke-direct {v0, p1}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 269
    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    .line 271
    :cond_2
    throw p1
.end method

.method private static c(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 309
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-static {p0}, Lo/aqn;->d(Ljava/io/InputStream;)Lo/aqp;

    move-result-object v1

    invoke-static {v1}, Lo/aqn;->a(Lo/aqp;)Lo/aqm;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e(Lo/aqm;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object v1

    const/4 v3, 0x0

    .line 311
    invoke-static {v1, v2, v3}, Lo/DHGenParameterSpec;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lo/GCMParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DESedeKeySpec;

    move-object v3, v1

    goto :goto_2

    :cond_1
    const-string v1, ".png"

    .line 312
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "/"

    .line 313
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 315
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 328
    new-instance p0, Lo/GCMParameterSpec;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 331
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lo/DHGenParameterSpec;->d(Lo/DESedeKeySpec;Ljava/lang/String;)Lo/ShortBufferException;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lo/ShortBufferException;->e()I

    move-result v2

    invoke-virtual {v1}, Lo/ShortBufferException;->b()I

    move-result v4

    invoke-static {v0, v2, v4}, Lo/ActivityManagerNative;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/ShortBufferException;->c(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 339
    :cond_7
    invoke-virtual {v3}, Lo/DESedeKeySpec;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortBufferException;

    invoke-virtual {v1}, Lo/ShortBufferException;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 341
    new-instance p0, Lo/GCMParameterSpec;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ShortBufferException;

    invoke-virtual {v0}, Lo/ShortBufferException;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 345
    :cond_9
    invoke-static {}, Lo/IntEvaluator;->c()Lo/IntEvaluator;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lo/IntEvaluator;->c(Ljava/lang/String;Lo/DESedeKeySpec;)V

    .line 346
    new-instance p0, Lo/GCMParameterSpec;

    invoke-direct {p0, v3}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 323
    new-instance p1, Lo/GCMParameterSpec;

    invoke-direct {p1, p0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static d(I)Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Lo/GCMParameterSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lo/DHGenParameterSpec;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/DHGenParameterSpec;->d(Ljava/io/InputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Lo/GCMParameterSpec;

    invoke-direct {p1, p0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 255
    invoke-static {p0, p1, v0}, Lo/DHGenParameterSpec;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lo/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/InputStream;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 178
    invoke-static {p0, p1, v0}, Lo/DHGenParameterSpec;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lo/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-static {p0, p1}, Lo/DHGenParameterSpec;->c(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lo/ActivityManagerNative;->b(Ljava/io/Closeable;)V

    .line 295
    throw p1
.end method

.method private static d(Lo/DESedeKeySpec;Ljava/lang/String;)Lo/ShortBufferException;
    .locals 2

    .line 351
    invoke-virtual {p0}, Lo/DESedeKeySpec;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ShortBufferException;

    .line 352
    invoke-virtual {v0}, Lo/ShortBufferException;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lo/DHParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 96
    new-instance v0, Lo/DHGenParameterSpec$4;

    invoke-direct {v0, p0, p1}, Lo/DHGenParameterSpec$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/DHGenParameterSpec;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;

    move-result-object p0

    return-object p0
.end method
