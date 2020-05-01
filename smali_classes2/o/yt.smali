.class Lo/yt;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Lo/ToggleButton;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/yq;

.field private d:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lo/yq;)V
    .locals 1

    const-string v0, "AutoLoginRequest"

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 45
    iput-object p4, p0, Lo/yt;->a:Lo/yq;

    if-nez p3, :cond_0

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lo/yt;->i:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    iput-object p3, p0, Lo/yt;->i:Ljava/lang/String;

    .line 52
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[\"autoLogin\",\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lo/yt;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/yt;->d:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 54
    iget-object p3, p0, Lo/yt;->d:Ljava/lang/String;

    aput-object p3, p1, p2

    const-string p2, "nf_service_user_autologinrequest"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/ToggleButton;

    invoke-virtual {p0, p1}, Lo/yt;->c(Lo/ToggleButton;)V

    return-void
.end method

.method protected c(Lo/ToggleButton;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/yt;->a:Lo/yq;

    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->c(Lo/ToggleButton;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Lo/ToggleButton;
    .locals 4

    const-string v0, "usingCookies"

    const-string v1, "nf_service_user_autologinrequest"

    .line 84
    :try_start_0
    invoke-static {v1, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, "autoLogin"

    .line 87
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    iget-object v3, p0, Lo/yt;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "success"

    .line 90
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "fake_id"

    .line 92
    invoke-static {p1, p2}, Lo/afP;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object p1

    .line 93
    new-instance p2, Lo/ToggleButton;

    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lo/ToggleButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string p2, "credentials"

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "netflixId"

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "secureNetflixId"

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lo/ToggleButton;

    invoke-direct {v0, p2, p1}, Lo/ToggleButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :cond_2
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "Empty tokens!"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Failed"

    .line 109
    invoke-static {v1, p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    new-instance p2, Lcom/netflix/falkor/FalkorException;

    invoke-direct {p2, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lo/yt;->a:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 124
    invoke-interface {v0, v1, p1}, Lo/yq;->c(Lo/ToggleButton;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/yt;->d(Ljava/lang/String;Ljava/lang/String;)Lo/ToggleButton;

    move-result-object p1

    return-object p1
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lo/yt;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
