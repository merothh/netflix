.class public final Lo/zr;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/volley/VolleyError;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p0, Lcom/android/volley/TimeoutError;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ftl"

    if-eqz v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "FTL error for connection timeout"

    .line 53
    invoke-static {v4, p0, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 57
    :cond_1
    invoke-static {p0}, Lo/aeu;->c(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/util/log/RootCause;

    move-result-object v1

    .line 58
    sget-object v5, Lcom/netflix/mediaclient/util/log/RootCause;->j:Lcom/netflix/mediaclient/util/log/RootCause;

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/netflix/mediaclient/util/log/RootCause;->h:Lcom/netflix/mediaclient/util/log/RootCause;

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/netflix/mediaclient/util/log/RootCause;->f:Lcom/netflix/mediaclient/util/log/RootCause;

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/netflix/mediaclient/util/log/RootCause;->i:Lcom/netflix/mediaclient/util/log/RootCause;

    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 65
    instance-of v5, v1, Ljava/net/HttpRetryException;

    if-eqz v5, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    check-cast v1, Ljava/net/HttpRetryException;

    invoke-virtual {v1}, Ljava/net/HttpRetryException;->responseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "NOT FTL error for retry: status code %s"

    invoke-static {v4, p0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 69
    :cond_3
    instance-of v2, v1, Lorg/chromium/net/NetworkException;

    if-eqz v2, :cond_4

    .line 70
    check-cast v1, Lorg/chromium/net/NetworkException;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lo/zr;->b(I)I

    move-result p0

    return p0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "NOT FTL error: unknown connection error"

    invoke-static {v4, p0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    :cond_5
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "FTL error for TLS failure"

    .line 60
    invoke-static {v4, p0, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x3

    return p0
.end method

.method public static b(I)I
    .locals 4

    const-string v0, "ftl"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "FTL error for connection: %s"

    invoke-static {v0, p0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 p0, 0xa

    return p0

    :pswitch_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "FTL error for connect failure: %s"

    invoke-static {v0, p0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :pswitch_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "FTL error for IO failure: %s"

    invoke-static {v0, p0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x4

    return p0

    :pswitch_2
    new-array v3, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "FTL error for cronet timeout: %s"

    invoke-static {v0, p0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "FTL error for DNS failure: %s"

    invoke-static {v0, p0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lo/ExitTransitionCoordinator;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 118
    iget-object v0, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v0, "Via"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
