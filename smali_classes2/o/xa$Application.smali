.class final Lo/xa$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;",
            "Lo/xa$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/xa$Application;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lo/xa$1;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lo/xa$Application;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/xa$Application;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;Lorg/chromium/net/RequestFinishedInfo$Metrics;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1, p2}, Lo/xa$Application;->c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;Lorg/chromium/net/RequestFinishedInfo$Metrics;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;Lorg/chromium/net/RequestFinishedInfo$Metrics;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lo/xa$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xa$TaskDescription;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lo/xa$TaskDescription;

    invoke-direct {v0}, Lo/xa$TaskDescription;-><init>()V

    .line 294
    iget-object v1, p0, Lo/xa$Application;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    invoke-virtual {v0, p2}, Lo/xa$TaskDescription;->d(Lorg/chromium/net/RequestFinishedInfo$Metrics;)V

    return-void
.end method


# virtual methods
.method public c()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$TaskDescription;
    .locals 12

    .line 300
    iget-object v0, p0, Lo/xa$Application;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$TaskDescription;

    .line 303
    iget-object v1, p0, Lo/xa$Application;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    .line 304
    new-instance v11, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$TaskDescription;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;

    .line 305
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/xa$TaskDescription;

    invoke-virtual {v5}, Lo/xa$TaskDescription;->d()J

    move-result-wide v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/xa$TaskDescription;

    invoke-virtual {v3}, Lo/xa$TaskDescription;->c()J

    move-result-wide v9

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$TaskDescription;-><init>(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/CurrentNetworkInfo$NetSpec;JJ)V

    aput-object v11, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
