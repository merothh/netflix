.class public final Lo/pr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/wv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pr$TaskDescription;
    }
.end annotation


# static fields
.field private static final a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

.field private static b:J

.field public static final d:Lo/pr;

.field private static final e:Lo/pr$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lo/pr;

    invoke-direct {v0}, Lo/pr;-><init>()V

    sput-object v0, Lo/pr;->d:Lo/pr;

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 159
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 24
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;->c(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    move-result-object v0

    sput-object v0, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    .line 42
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    const/16 v2, 0x1f4

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    const/16 v2, 0x3e8

    .line 43
    :goto_0
    new-instance v0, Lo/pr$TaskDescription;

    .line 45
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1c

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 46
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v6}, Lo/pr$TaskDescription;-><init>(IJJ)V

    .line 35
    sput-object v0, Lo/pr;->e:Lo/pr$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/pr;)Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
    .locals 0

    .line 22
    sget-object p0, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    return-object p0
.end method

.method private final b()J
    .locals 2

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Z
    .locals 0

    .line 71
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/Aq;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static final synthetic c(Lo/pr;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Lo/Ch;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/pr;->e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Lo/Ch;

    move-result-object p0

    return-object p0
.end method

.method private final c()Z
    .locals 5

    .line 51
    sget-object v0, Lo/fV;->b:Lo/fV$ActionBar;

    invoke-virtual {v0}, Lo/fV$ActionBar;->a()Lo/hs;

    move-result-object v0

    invoke-virtual {v0}, Lo/hs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lo/pf;->e()J

    move-result-wide v0

    const v2, 0x2faf080

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d()V
    .locals 0

    return-void
.end method

.method public static final synthetic d(Lo/pr;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/pr;->e()V

    return-void
.end method

.method private final e([Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;)Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;
    .locals 3

    .line 115
    sget-object v0, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->a:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    .line 117
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 118
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;->d()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetType;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->c:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetType;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->e:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    goto :goto_0

    .line 124
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->a:Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final e(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Lo/Ch;
    .locals 11

    .line 103
    new-instance v10, Lo/Ch;

    .line 104
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->b()Ljava/lang/String;

    move-result-object v2

    const-string v0, "endPlayJson.xid"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lo/pr;->b()J

    move-result-wide v3

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->b:Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/nfu/api/WatchEventTypes;->b()I

    move-result v5

    .line 108
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->a()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;

    move-result-object v0

    const-string v6, "endPlayJson.networkdist"

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/pr;->e([Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$ActionBar;)Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/nfu/api/WatchNetworkType;->d()I

    move-result v6

    .line 109
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->j()Ljava/lang/Long;

    move-result-object v0

    const-string v7, "endPlayJson.movieDuration"

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 110
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;->d()Z

    move-result v9

    move-object v0, v10

    .line 103
    invoke-direct/range {v0 .. v9}, Lo/Ch;-><init>(Ljava/lang/String;Ljava/lang/String;JIIJZ)V

    return-object v10
.end method

.method private final e()V
    .locals 6

    .line 89
    invoke-direct {p0}, Lo/pr;->b()J

    move-result-wide v0

    sget-wide v2, Lo/pr;->b:J

    sget-object v4, Lo/pr;->e:Lo/pr$TaskDescription;

    invoke-virtual {v4}, Lo/pr$TaskDescription;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 90
    sget-object v0, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v0

    invoke-interface {v0}, Lo/BX;->e()I

    move-result v0

    .line 91
    sget-object v1, Lo/pr;->e:Lo/pr$TaskDescription;

    invoke-virtual {v1}, Lo/pr$TaskDescription;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 94
    sget-object v0, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v0

    sget-object v1, Lo/pr;->e:Lo/pr$TaskDescription;

    invoke-virtual {v1}, Lo/pr$TaskDescription;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Lo/BX;->d(I)V

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v0

    invoke-direct {p0}, Lo/pr;->b()J

    move-result-wide v1

    sget-object v3, Lo/pr;->e:Lo/pr$TaskDescription;

    invoke-virtual {v3}, Lo/pr$TaskDescription;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lo/BX;->c(J)V

    .line 98
    :goto_0
    invoke-direct {p0}, Lo/pr;->b()J

    move-result-wide v0

    sput-wide v0, Lo/pr;->b:J

    :cond_1
    return-void
.end method

.method public static final e(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "key"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lo/fV;->b:Lo/fV$ActionBar;

    invoke-virtual {v0}, Lo/fV$ActionBar;->a()Lo/hs;

    move-result-object v0

    invoke-virtual {v0}, Lo/hs;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-static {v2, v1, v0, v2}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 136
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    sget-object v2, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v2

    invoke-interface {v2}, Lo/BX;->e()I

    move-result v2

    .line 138
    sget-object v3, Lo/pr;->a:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v3

    invoke-interface {v3}, Lo/BX;->b()Ljava/util/List;

    move-result-object v3

    const-string v4, "count"

    .line 139
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const-string v2, "oldestEntryLife"

    .line 142
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    sget-object v5, Lo/pr;->d:Lo/pr;

    invoke-direct {v5}, Lo/pr;->b()J

    move-result-wide v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ch;

    invoke-virtual {v1}, Lo/Ch;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 142
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 141
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    :cond_0
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static final synthetic e(Lo/pr;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/pr;->d()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)V
    .locals 2

    const-string v0, "endPlayJson"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lo/pr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lo/pr;->b(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lo/pr$Application;

    invoke-direct {v1, p1}, Lo/pr$Application;-><init>(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
