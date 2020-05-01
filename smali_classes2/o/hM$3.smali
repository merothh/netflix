.class Lo/hM$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hM;->e(Lo/bX;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/hM;

.field final synthetic c:Lo/bX;


# direct methods
.method constructor <init>(Lo/hM;Lo/bX;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/hM$3;->b:Lo/hM;

    iput-object p2, p0, Lo/hM$3;->c:Lo/bX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "nf_service_diagnosisagent"

    .line 96
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lo/hM$3;->c:Lo/bX;

    invoke-virtual {v5}, Lo/bX;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 106
    :cond_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v6, :cond_0

    .line 126
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_0
    :try_start_2
    const-string v4, "IOError:"

    .line 119
    invoke-static {v0, v4, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ce:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 126
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_2
    :try_start_3
    const-string v4, "invalid URL:"

    .line 113
    invoke-static {v0, v4, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    :goto_3
    iget-object v0, p0, Lo/hM$3;->c:Lo/bX;

    invoke-virtual {v0, v1}, Lo/bX;->d(I)V

    .line 130
    iget-object v0, p0, Lo/hM$3;->c:Lo/bX;

    invoke-virtual {v0, v1}, Lo/bX;->e(I)V

    .line 131
    iget-object v0, p0, Lo/hM$3;->c:Lo/bX;

    invoke-virtual {v0, v2}, Lo/bX;->b(Z)V

    .line 132
    iget-object v0, p0, Lo/hM$3;->c:Lo/bX;

    sget-object v1, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {v0, v1}, Lo/bX;->b(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V

    .line 133
    iget-object v0, p0, Lo/hM$3;->b:Lo/hM;

    invoke-static {v0}, Lo/hM;->e(Lo/hM;)V

    return-void

    :goto_4
    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    :cond_2
    throw v0
.end method
