.class public Lo/jM;
.super Lo/nn;
.source ""


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:Lorg/json/JSONObject;

.field private final d:Lo/iT$ActionBar;

.field private v:Landroid/content/Context;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lo/jM;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;Lo/iT$ActionBar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;",
            "Lo/iT$ActionBar;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lo/nn;-><init>()V

    .line 60
    sget-object v0, Lo/jM;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 61
    iput-object p1, p0, Lo/jM;->v:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    .line 62
    invoke-direct/range {v1 .. v6}, Lo/jM;->c(Landroid/content/Context;JLcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lo/jM;->b:Lorg/json/JSONObject;

    .line 63
    iput-object p4, p0, Lo/jM;->d:Lo/iT$ActionBar;

    return-void
.end method

.method private U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 201
    invoke-static {}, Lo/gZ;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_logblob_SendLogblobsMsl"

    const-string v1, "Logging details on failure"

    .line 202
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 205
    instance-of v2, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v2, :cond_0

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->h()Lcom/netflix/cl/model/Error;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "It should be NetflixStatus. This should NOT happen!"

    .line 208
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    new-instance v0, Lcom/netflix/cl/model/Error;

    const-string v2, "logblobDeliveryFailure"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Error;)V

    .line 212
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    .line 215
    :cond_1
    invoke-static {}, Lo/gZ;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->c:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_2
    return-void
.end method

.method private aj()Lorg/json/JSONObject;
    .locals 4

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "method"

    const-string v2, "logblob"

    .line 163
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logblobs"

    .line 164
    iget-object v2, p0, Lo/jM;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "nf_logblob_SendLogblobsMsl"

    const-string v3, "error creating logblob params"

    .line 167
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private al()V
    .locals 2

    .line 221
    invoke-static {}, Lo/gZ;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->c:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;JLcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 123
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 124
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/Logblob;->e()Lorg/json/JSONObject;

    move-result-object v3

    .line 127
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/Logblob;->a()J

    move-result-wide v4

    const-string v6, "clienttime"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "snum"

    .line 128
    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    const-string v4, "lnum"

    .line 129
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    iget-object v4, p4, Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;->d:Ljava/lang/String;

    const-string v5, "esn"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v4, p4, Lcom/netflix/mediaclient/servicemgr/Logblob$ActionBar;->e:Ljava/lang/String;

    const-string v5, "devmod"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "platformVersion"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-static {p1}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v4

    const-string v5, "platformBuildNum"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "platformType"

    const-string v5, "Android Tanto"

    .line 134
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uiver"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "fingerprint"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "android_api_level"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "entries"

    .line 143
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected O()Z
    .locals 1

    .line 68
    invoke-static {}, Lo/hb;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected W()Ljava/lang/String;
    .locals 6

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    const-string v2, "/logblob"

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "params"

    .line 108
    invoke-direct {p0}, Lo/jM;->aj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lo/jM;->w:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "languages"

    .line 110
    new-instance v2, Lorg/json/JSONArray;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lo/jM;->w:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "nf_logblob_SendLogblobsMsl"

    const-string v3, "error building payload for Nq"

    .line 113
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1}, Lo/jM;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 192
    iget-object v0, p0, Lo/jM;->d:Lo/iT$ActionBar;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0, p1}, Lo/iT$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_logblob_SendLogblobsMsl"

    const-string v0, "callback null?"

    .line 195
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/jM;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected e(Lorg/json/JSONObject;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Lo/jM;->al()V

    .line 181
    iget-object v0, p0, Lo/jM;->d:Lo/iT$ActionBar;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lo/jM;->v:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;->k:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;

    invoke-static {v0, p1, v1}, Lo/iZ;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BasePlayErrorStatus$PlayRequestType;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lo/jM;->d:Lo/iT$ActionBar;

    invoke-interface {v0, p1}, Lo/iT$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_logblob_SendLogblobsMsl"

    const-string v0, "callback null?"

    .line 185
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->r:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Lo/nn;->q()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "logblob"

    .line 86
    invoke-direct {p0}, Lo/jM;->U()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/aei;->e(Ljava/util/Map;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_logblob_SendLogblobsMsl"

    const-string v4, "Failed to get MSL headers"

    .line 88
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-super {p0}, Lo/nn;->u()Ljava/util/Map;

    move-result-object v0

    const-string v1, "languages"

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lo/jM;->w:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lo/jM;->w:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected u_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "[\"logblobs\"]"

    .line 174
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
