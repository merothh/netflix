.class public final Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

.field private static c:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    .line 25
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 140
    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 141
    sget-object v4, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$ActionBar;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$ActionBar;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lo/akz;->e(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 153
    check-cast v0, Ljava/lang/Iterable;

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 156
    :cond_2
    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    return-void
.end method

.method public static final a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 10

    const-string v0, "res"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errormsg"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->h:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    .line 72
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lo/LegacyErrorStrings;->T:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    const-string v3, "res.statusCode"

    if-ne v1, v2, :cond_1

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->d:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    :cond_0
    :goto_0
    move-object v9, v0

    goto :goto_2

    .line 77
    :cond_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->m:Lcom/netflix/mediaclient/StatusCode;

    if-eq v1, v2, :cond_5

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->l:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->c:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->g:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->e:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    goto :goto_0

    .line 80
    :cond_5
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    goto :goto_0

    .line 96
    :goto_2
    sget-object v4, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v5

    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p0

    invoke-static {p0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a(JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "keyName"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->d()V

    .line 112
    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    sget-object p0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    sget-object p0, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "error"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    move-object v4, p0

    sget-object v6, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->b:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const-string v5, ""

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a(JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;)V

    :cond_1
    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "startup_error_history"

    .line 181
    invoke-static {v0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;J)Lorg/json/JSONObject;
    .locals 2

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorcode"

    .line 166
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errormsg"

    .line 167
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "category"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "clienttime"

    .line 169
    invoke-virtual {v0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "appvers"

    const-string p2, "7.54.2"

    .line 170
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string p2, "BaseNetflixApp.getInstance()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object p1

    const-string p3, "BaseNetflixApp.getInstance().userInputTracker"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Plugin;->e()Z

    move-result p1

    const-string p4, "bg"

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 172
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Plugin;->f()Z

    move-result p1

    const-string p2, "bgstart"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final c()Z
    .locals 2

    .line 177
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d()V
    .locals 4

    .line 122
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "startup_error_history"

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "startupError"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadStartupErrors pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;)V
    .locals 6

    const-string v0, "errorcode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errormsg"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clienttime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " errorcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "errormsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startupError"

    .line 44
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-enter p0

    .line 51
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->d()V

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a()V

    .line 57
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    sget-object p1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;

    sget-object p2, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->c:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "startupJsonArray.toString()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;->b(Ljava/lang/String;)V

    .line 61
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
