.class final Lo/WebResourceRequest$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebResourceRequest;->e(Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:[B

.field private static c:I = 0x1

.field private static d:I

.field private static e:I


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/WebResourceRequest$ActionBar;->b:[B

    const/16 v0, 0x3b

    sput v0, Lo/WebResourceRequest$ActionBar;->e:I

    return-void

    :array_0
    .array-data 1
        0xct
        0x66t
        -0x45t
        0x2t
        -0x4t
        0xdt
        -0x34t
        0x35t
        -0x7t
        -0x11t
        0xct
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebResourceRequest$ActionBar;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIB)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x4

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x67

    sget-object v0, Lo/WebResourceRequest$ActionBar;->b:[B

    new-array v1, p2, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p0, p1

    move-object v3, v0

    const/4 v4, 0x0

    move v0, p2

    goto :goto_1

    :cond_0
    move-object v3, v0

    move v0, p2

    move p2, p0

    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, p0, 0x1

    int-to-byte v5, p2

    aput-byte v5, v1, p0

    if-ne v4, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte p0, v3, p1

    :goto_1
    add-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x2

    move p0, v4

    goto :goto_0
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "emitter"

    .line 204
    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 184
    :try_start_1
    sget-object v4, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 216
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 184
    iget-object v5, p0, Lo/WebResourceRequest$ActionBar;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    aput-object v4, v6, v2

    const/16 v4, 0x7db6

    const/16 v5, 0x11

    invoke-static {v4, v5, v2}, Lo/NetworkInfo;->e(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "d"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/content/res/AssetManager;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    throw v5

    :cond_0
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :catch_0
    move-exception v4

    .line 186
    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {p1, v4}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_2

    .line 0
    sget-object v5, Lo/anm;->b:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v6, Ljava/io/Reader;

    const/16 v4, 0x2000

    instance-of v5, v6, Ljava/io/BufferedReader;

    if-eqz v5, :cond_1

    .line 205
    move-object v4, v6

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_1

    .line 184
    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v5

    goto :goto_1

    :cond_2
    sget v4, Lo/WebResourceRequest$ActionBar;->c:I

    add-int/lit8 v4, v4, 0x3b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lo/WebResourceRequest$ActionBar;->d:I

    rem-int/2addr v4, v1

    move-object v4, v0

    .line 196
    :goto_1
    check-cast v4, Ljava/io/Closeable;

    .line 189
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    :try_start_4
    move-object v6, v4

    check-cast v6, Ljava/io/BufferedReader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_a

    sget v7, Lo/WebResourceRequest$ActionBar;->d:I

    add-int/lit8 v7, v7, 0x73

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lo/WebResourceRequest$ActionBar;->c:I

    rem-int/2addr v7, v1

    .line 205
    :try_start_5
    check-cast v6, Ljava/io/Reader;

    invoke-static {v6}, Lo/alx;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_a

    .line 189
    sget v7, Lo/WebResourceRequest$ActionBar;->c:I

    add-int/lit8 v7, v7, 0xd

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lo/WebResourceRequest$ActionBar;->d:I

    rem-int/2addr v7, v1

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eq v7, v3, :cond_5

    .line 196
    :try_start_6
    sget-object v7, Lo/anm;->b:Ljava/nio/charset/Charset;

    if-eqz v6, :cond_7

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_5

    :cond_5
    sget-object v7, Lo/anm;->b:Ljava/nio/charset/Charset;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v6, :cond_7

    :goto_4
    :try_start_7
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v2

    .line 191
    const-class v7, Ljava/lang/String;

    int-to-byte v9, v2

    add-int/lit8 v10, v9, -0x1

    int-to-byte v10, v10

    add-int/lit8 v11, v10, 0x1

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lo/WebResourceRequest$ActionBar;->a(IIB)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/nio/charset/Charset;

    aput-object v11, v10, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string v7, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "UTF-8"

    .line 197
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    const-string v8, "Charset.forName(\"UTF-8\")"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 193
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_6

    :catchall_1
    move-exception v6

    .line 205
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 184
    throw v7

    .line 202
    :cond_6
    throw v6

    .line 189
    :cond_7
    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 201
    :goto_5
    :try_start_9
    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {p1, v6}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_9

    goto :goto_8

    .line 205
    :cond_9
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 207
    :goto_8
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 209
    :try_start_a
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 189
    :cond_a
    :goto_9
    :try_start_b
    invoke-static {v4, v5}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    sget p1, Lo/WebResourceRequest$ActionBar;->d:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lo/WebResourceRequest$ActionBar;->c:I

    rem-int/2addr p1, v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    return-void

    :catch_3
    move-exception p1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    .line 184
    invoke-static {v4, p1}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 209
    throw p1
.end method
