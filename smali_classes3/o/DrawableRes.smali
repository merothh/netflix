.class public Lo/DrawableRes;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/DimenRes;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/DrawableRes;->d:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    .line 37
    new-instance p1, Lo/DimenRes;

    iget-object v0, p0, Lo/DrawableRes;->d:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lo/DimenRes;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lo/DrawableRes;->a:Lo/DimenRes;

    return-void
.end method

.method private a()Lo/GCMParameterSpec;
    .locals 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivityOptions;->e(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 91
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-direct {p0, v0}, Lo/DrawableRes;->b(Ljava/net/HttpURLConnection;)Lo/GCMParameterSpec;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed fetch from network. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/ActivityOptions;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 97
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lo/DrawableRes;->c(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Lo/GCMParameterSpec;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 105
    :try_start_2
    new-instance v2, Lo/GCMParameterSpec;

    invoke-direct {v2, v1}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lo/GCMParameterSpec;
    .locals 1
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

    .line 31
    new-instance v0, Lo/DrawableRes;

    invoke-direct {v0, p0, p1}, Lo/DrawableRes;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/DrawableRes;->b()Lo/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/net/HttpURLConnection;)Lo/GCMParameterSpec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/4 v2, -0x1

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4a67ee1e

    if-eq v3, v4, :cond_2

    const v4, -0x29cf5b9

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    const-string v0, "Received json response."

    .line 153
    invoke-static {v0}, Lo/ActivityOptions;->e(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->e:Lcom/airbnb/lottie/network/FileExtension;

    .line 155
    iget-object v1, p0, Lo/DrawableRes;->a:Lo/DimenRes;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/DimenRes;->c(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object p1

    .line 156
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/DHGenParameterSpec;->d(Ljava/io/InputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "Handling zip response."

    .line 146
    invoke-static {v0}, Lo/ActivityOptions;->e(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->b:Lcom/airbnb/lottie/network/FileExtension;

    .line 148
    iget-object v1, p0, Lo/DrawableRes;->a:Lo/DimenRes;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/DimenRes;->c(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object p1

    .line 149
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/DHGenParameterSpec;->d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p1

    .line 160
    :goto_1
    invoke-virtual {p1}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 161
    iget-object v1, p0, Lo/DrawableRes;->a:Lo/DimenRes;

    invoke-virtual {v1, v0}, Lo/DimenRes;->a(Lcom/airbnb/lottie/network/FileExtension;)V

    :cond_5
    return-object p1
.end method

.method private c(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    .line 112
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 113
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :catch_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 122
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 129
    :catch_2
    throw p1
.end method

.method private c()Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-direct {p0}, Lo/DrawableRes;->a()Lo/GCMParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lo/GCMParameterSpec;

    invoke-direct {v1, v0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private d()Lo/DESedeKeySpec;
    .locals 4

    .line 57
    iget-object v0, p0, Lo/DrawableRes;->a:Lo/DimenRes;

    invoke-virtual {v0}, Lo/DimenRes;->b()Lo/ByteArrayInputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    iget-object v2, v0, Lo/ByteArrayInputStream;->a:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/network/FileExtension;

    .line 63
    iget-object v0, v0, Lo/ByteArrayInputStream;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    .line 65
    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->b:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v2, v3, :cond_1

    .line 66
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lo/DHGenParameterSpec;->d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/DHGenParameterSpec;->d(Ljava/io/InputStream;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object v0

    .line 70
    :goto_0
    invoke-virtual {v0}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v0}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DESedeKeySpec;

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public b()Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lo/DrawableRes;->d()Lo/DESedeKeySpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lo/GCMParameterSpec;

    invoke-direct {v1, v0}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DrawableRes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivityOptions;->e(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lo/DrawableRes;->c()Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method
