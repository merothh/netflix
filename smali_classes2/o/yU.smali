.class Lo/yU;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Lo/yq;

.field private final f:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/yq;)V
    .locals 1

    const-string v0, "VerifyPinRequest"

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 36
    iput-object p6, p0, Lo/yU;->d:Lo/yq;

    .line 37
    iput-object p3, p0, Lo/yU;->a:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->a:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    const/4 p2, 0x1

    const/4 p6, 0x0

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p4, "verifyPin"

    goto :goto_1

    :cond_1
    const-string p4, "verifyPreviewPin"

    .line 39
    :goto_1
    iput-object p4, p0, Lo/yU;->j:Ljava/lang/String;

    const/4 p4, 0x2

    if-eqz p1, :cond_2

    new-array p1, p4, [Ljava/lang/Object;

    .line 41
    iget-object p4, p0, Lo/yU;->j:Ljava/lang/String;

    aput-object p4, p1, p6

    aput-object p3, p1, p2

    const-string p3, "[\"user\", \"%s\", \"%s\"]"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lo/yU;->j:Ljava/lang/String;

    aput-object v0, p1, p6

    aput-object p3, p1, p2

    aput-object p5, p1, p4

    const-string p3, "[\"user\", \"%s\", \"%s\", \"%s\"]"

    .line 42
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lo/yU;->f:Ljava/lang/String;

    new-array p1, p2, [Ljava/lang/Object;

    .line 45
    iget-object p2, p0, Lo/yU;->f:Ljava/lang/String;

    aput-object p2, p1, p6

    const-string p2, "nf_pin"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "nf_pin"

    const-string v1, "String response to parse = %s"

    .line 57
    invoke-static {v0, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    invoke-static {v0, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 60
    invoke-static {p2}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "user"

    .line 67
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object p2, p0, Lo/yU;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lo/yU;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "isPinValid"

    .line 74
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String response to parse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "response missing user json objects"

    invoke-direct {p1, v0, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_0
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "verifyPinResponse empty!!!"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lo/yU;->d:Lo/yq;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->a(ZLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/yU;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/yU;->d:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    invoke-interface {v0, v1, p1}, Lo/yq;->a(ZLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/yU;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
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

    .line 50
    iget-object v1, p0, Lo/yU;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
