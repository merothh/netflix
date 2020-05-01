.class public Lo/qw;
.super Lo/qg;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lo/qg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lo/qw;->b:Lo/pS;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lo/qw;->b:Lo/pS;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/pS;->e(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 85
    :cond_0
    sget-object p1, Lo/qw;->e:Ljava/lang/String;

    const-string v0, "no callback for OfflineLicenseSyncRequest"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 11

    .line 41
    sget-object v0, Lo/qw;->e:Ljava/lang/String;

    const-string v1, "parsing license sync response"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lo/qw;->B:Landroid/content/Context;

    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v3}, Lo/iZ;->b(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    const-string v3, "result"

    .line 50
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "actions"

    .line 53
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_1
    const/4 p1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 58
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    sget-object v8, Lo/qw;->e:Ljava/lang/String;

    const-string v9, "OfflineLicenseSyncRequest response movieId=%s action=%s"

    new-array v10, p1, [Ljava/lang/Object;

    aput-object v6, v10, v4

    aput-object v7, v10, v3

    invoke-static {v8, v9, v10}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 62
    sget-object v8, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lo/aeg;->d(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 63
    invoke-static {v7}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->a(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v7

    .line 64
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 67
    sget-object v5, Lo/qw;->e:Ljava/lang/String;

    const-string v6, "JSONException"

    invoke-static {v5, v6, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_2
    sget-object v2, Lo/qw;->e:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lo/qw;->d:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    aput-object v1, v5, p1

    const-string p1, "onSuccess %s status: %s responseActions %s"

    invoke-static {v2, p1, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    iget-object p1, p0, Lo/qw;->b:Lo/pS;

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lo/qw;->b:Lo/pS;

    invoke-interface {p1, v1, v0}, Lo/pS;->e(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    .line 75
    :cond_3
    sget-object p1, Lo/qw;->e:Ljava/lang/String;

    const-string v0, "no callback for OfflineLicenseSyncRequest"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/qw;->b(Lorg/json/JSONObject;)V

    return-void
.end method
