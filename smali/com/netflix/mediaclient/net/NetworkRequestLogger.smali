.class public final enum Lcom/netflix/mediaclient/net/NetworkRequestLogger;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/net/NetworkRequestLogger;",
        ">;",
        "Lo/E;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

.field private static final synthetic m:[Lcom/netflix/mediaclient/net/NetworkRequestLogger;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Random;

.field private d:Lo/bV$TaskDescription;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/net/AppVisibilityState;",
            "Lo/K;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/net/NetworkRequestType;",
            "Lo/I;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:J

.field private l:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    .line 30
    sget-object v2, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c:Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->m:[Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->b:Ljava/util/Random;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->e:Z

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->h:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->g:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 1

    const-string v0, "/msl"

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object p0

    return-object p0

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 3

    const-string v0, "/"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string v0, "nf_net_stats"

    const-string v2, "parseMslRequestForNetworkRequestType:: last index of /: %d, type: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkRequestType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized c(Lo/bV$TaskDescription;)V
    .locals 6

    monitor-enter p0

    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 234
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lo/bV$TaskDescription;->f()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->a:Ljava/lang/String;

    .line 238
    iget-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->a:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "nf_net_stats"

    const-string v0, "saveAppData:: appId is still not available!"

    .line 239
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string p1, "nf_net_stats"

    const-string v0, "saveAppData:: appId: %s, start time in ms: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    iput-boolean v3, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()Z
    .locals 9

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 254
    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->j:J

    sub-long v2, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x7530

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    iget-wide v5, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->j:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "nf_net_stats"

    const-string v5, "shouldSaveStats:: now: %d, lastTimeLogged: %d, save: %b"

    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v2, :cond_1

    .line 257
    iput-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->j:J

    :cond_1
    return v2
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_net_stats"

    const-string v1, "Saving network starts..."

    .line 163
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previous_network_stats"

    invoke-static {p1, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Saving network done."

    .line 165
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 4

    const-string v0, "&TAG="

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "?TAG="

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v1, "&"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x5

    .line 298
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 299
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v1, v2

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string v0, "nf_net_stats"

    const-string v1, "parseWebRequestForNetworkRequestType:: last index of \'[&|?]TAG=\': %d, last index of delimiter: %d, type: %s"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    invoke-static {p0}, Lcom/netflix/mediaclient/net/NetworkRequestType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestLogger;
    .locals 1

    .line 30
    const-class v0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/net/NetworkRequestLogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->m:[Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/net/NetworkRequestLogger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/net/NetworkRequestLogger;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()Lorg/json/JSONObject;
    .locals 9

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->i:J

    sub-long v2, v0, v2

    const-string v4, "nf_net_stats"

    const-string v5, "toJson: now: %d, startTimeInMs: %d, duration: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget-wide v7, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->i:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    .line 183
    iget-object v4, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "startTime"

    .line 184
    iget-wide v4, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->i:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    iget-object v3, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 192
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "xid_bytes"

    .line 193
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "data"

    .line 196
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/I;

    .line 199
    invoke-virtual {v3}, Lo/I;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 202
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "app_visibility_data"

    .line 203
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/K;

    invoke-virtual {v4}, Lo/K;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "state"

    .line 207
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/net/AppVisibilityState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/net/AppVisibilityState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 211
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 192
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/net/NetworkRequestType;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "nf_net_stats"

    const-string v1, "onNetworkRequestFinished:: url: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 98
    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d:Lo/bV$TaskDescription;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->c(Lo/bV$TaskDescription;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d:Lo/bV$TaskDescription;

    invoke-interface {v0}, Lo/bV$TaskDescription;->c()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    .line 105
    invoke-static {p2}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "nf_net_stats"

    const-string p2, "onNetworkRequestFinished:: networkRequestType is null!"

    .line 108
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->J:Lcom/netflix/mediaclient/net/NetworkRequestType;

    :cond_2
    const-string p2, "nf_net_stats"

    const-string v1, "onNetworkRequestFinished:: networkRequestType: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/net/NetworkRequestType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    iget-object p2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/I;

    if-nez p2, :cond_3

    .line 116
    new-instance p2, Lo/I;

    invoke-direct {p2, p1}, Lo/I;-><init>(Lcom/netflix/mediaclient/net/NetworkRequestType;)V

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->h:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_3
    invoke-static {v0}, Lo/G;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "nf_net_stats"

    const-string v1, "Network type is null, not expected! Set it to \'unknown\'"

    .line 123
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "unkown"

    .line 127
    :cond_4
    invoke-virtual {p2, p1, p3, p4}, Lo/I;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 129
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/netflix/mediaclient/net/AppVisibilityState;->b:Lcom/netflix/mediaclient/net/AppVisibilityState;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/netflix/mediaclient/net/AppVisibilityState;->d:Lcom/netflix/mediaclient/net/AppVisibilityState;

    .line 131
    :goto_0
    iget-object p2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/K;

    if-nez p2, :cond_6

    .line 133
    new-instance p2, Lo/K;

    invoke-direct {p2}, Lo/K;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->g:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_6
    invoke-virtual {p2, p3, p4}, Lo/K;->b(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lo/D;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d:Lo/bV$TaskDescription;

    invoke-interface {v0}, Lo/bV$TaskDescription;->b()Lo/cz;

    move-result-object v0

    const-string v1, "networkStats"

    invoke-interface {v0, v1}, Lo/cz;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->b:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSuppressPercentagePerEvent()I

    move-result v0

    if-le v2, v0, :cond_0

    :goto_0
    if-eqz v3, :cond_2

    .line 153
    :try_start_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-interface {p1}, Lo/D;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "nf_net_stats"

    const-string v2, "unable to send networkStats"

    .line 155
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d:Lo/bV$TaskDescription;

    invoke-interface {v0}, Lo/bV$TaskDescription;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 82
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d(Landroid/content/Context;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->f:Ljava/util/Map;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lo/bV$TaskDescription;J)V
    .locals 4

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->d:Lo/bV$TaskDescription;

    .line 49
    iput-wide p2, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->i:J

    .line 51
    invoke-interface {p1}, Lo/bV$TaskDescription;->c()Landroid/content/Context;

    move-result-object p2

    const-string p3, "previous_network_stats"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "nf_net_stats"

    const-string v3, "NetworkRequestLogge::init: previousNetworkStats: %s"

    .line 53
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-interface {p1}, Lo/bV$TaskDescription;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->l:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Failed to create JSON!"

    .line 63
    invoke-static {v2, p1, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/net/NetworkRequestLogger;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nf_net_stats"

    const-string v3, "Failed to create toString!"

    .line 219
    invoke-static {v2, v0, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, ""

    return-object v0
.end method
