.class public Lo/aN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/aN;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lo/aN;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lo/aN;->d:J

    return-wide v0
.end method

.method private c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 5

    .line 121
    iget-object v0, p0, Lo/aN;->b:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/Search;

    invoke-direct {v2, p2}, Lcom/netflix/cl/model/event/session/action/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lo/aN;->d:J

    .line 126
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 127
    invoke-static {}, Lo/adq;->d()Z

    move-result v3

    new-instance v4, Lo/aN$1;

    invoke-direct {v4, p0, p2, p1, v0}, Lo/aN$1;-><init>(Lo/aN;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 126
    invoke-interface {v1, p2, v2, v3, v4}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/zU;)Z

    .line 186
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method static synthetic c(Lo/aN;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/aN;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;)Z
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lo/aN;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;)Z

    move-result p0

    return p0
.end method

.method private d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const-string v0, "NetflixComSearchHandler"

    const-string v1, "reportDelayedActonDone"

    .line 195
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;)Z
    .locals 6

    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;->jaroWinklerSimilarityThreshold()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3febd70a3d70a3d7L    # 0.87

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SearchResultsSimilarityAlgorithm;->jaroWinklerPrefixLengthLimit()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 205
    :goto_1
    new-instance v3, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    invoke-direct {v3, p2}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;-><init>(I)V

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "similarity score ("

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", threshold = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetflixComSearchHandler"

    invoke-static {p1, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-double p0, v3, v0

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V
    .locals 3

    .line 229
    new-instance v0, Lo/aO;

    invoke-direct {v0}, Lo/aO;-><init>()V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "title"

    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lo/aO;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 2

    .line 239
    iget-object v0, p0, Lo/aN;->b:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "play"

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SearchCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SearchCommand;-><init>()V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 83
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 85
    :goto_0
    iget-object p3, p0, Lo/aN;->b:Ljava/util/Map;

    const-string v1, "source"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lo/aN;->b:Ljava/util/Map;

    const-string v2, "action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-static {}, Lo/aek;->o()Z

    move-result v2

    const-string v3, "bixbymde"

    .line 88
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v5, "bixbyvoice"

    .line 89
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 90
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->c()Z

    move-result v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v4

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v7, v0

    const/4 p3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, p3

    const/4 p3, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, p3

    const/4 p3, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, p3

    const/4 p3, 0x5

    aput-object v1, v7, p3

    const-string p3, "NetflixComSearchHandler"

    const-string v2, "tryHandle source=%s isBixbyMde=%b isBixbyVoice=%s isSamsungDevice=%b mdeDisabled=%b action=%s"

    .line 92
    invoke-static {p3, v2, v7}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    const-string v2, "play"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lo/aN;->b:Ljava/util/Map;

    const-string v2, "internalCurrentPlayableId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v6, "tryHandle bixbymde %s"

    .line 98
    invoke-static {p3, v6, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const p2, 0xf200bca

    .line 101
    invoke-virtual {p0, p1, v1, p2}, Lo/aN;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V

    .line 103
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1

    :cond_3
    if-nez v3, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 109
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 110
    invoke-direct {p0, p1, p2}, Lo/aN;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    return-object p1

    .line 112
    :cond_6
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p3

    sget-object v0, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    .line 113
    invoke-virtual {p3, v0}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p3

    .line 114
    invoke-virtual {p3, p2}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p1}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    .line 116
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V
    .locals 5

    .line 213
    new-instance v0, Lo/aW;

    invoke-direct {v0}, Lo/aW;-><init>()V

    const-wide/16 v1, -0x1

    .line 215
    invoke-virtual {v0, v1, v2}, Lo/aW;->c(J)V

    .line 216
    sget-object v1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object v2, p0, Lo/aN;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    .line 218
    sget-object v3, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object v4, p0, Lo/aN;->b:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/aW;->e(Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    sget-object v1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object v2, p0, Lo/aN;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Ljava/util/Map;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/aW;->b(Z)V

    .line 221
    new-instance v1, Lo/aX;

    invoke-direct {v1, v0}, Lo/aX;-><init>(Lo/aW;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "watch"

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Lo/aX;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-void
.end method
