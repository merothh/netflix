.class public Lo/RJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ck;
.implements Lo/QQ$TaskDescription;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Td;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/QQ;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lo/Rp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/RJ;->e:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/RJ;->c:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/RJ;->b:Ljava/util/Map;

    .line 74
    new-instance v0, Lo/Rp;

    invoke-direct {v0}, Lo/Rp;-><init>()V

    iput-object v0, p0, Lo/RJ;->h:Lo/Rp;

    .line 70
    iput-object p1, p0, Lo/RJ;->a:Landroid/content/Context;

    .line 71
    new-instance v0, Lo/QQ;

    invoke-direct {v0, p1, p0}, Lo/QQ;-><init>(Landroid/content/Context;Lo/QQ$TaskDescription;)V

    iput-object v0, p0, Lo/RJ;->d:Lo/QQ;

    return-void
.end method

.method static synthetic a(Lo/Tf;Lo/Tf;)I
    .locals 0

    invoke-static {p0, p1}, Lo/RJ;->e(Lo/Tf;Lo/Tf;)I

    move-result p0

    return p0
.end method

.method private static synthetic e(Lo/Tf;Lo/Tf;)I
    .locals 2

    .line 255
    invoke-virtual {p0}, Lo/Tf;->X()I

    move-result v0

    invoke-virtual {p1}, Lo/Tf;->X()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lo/Tf;->V()I

    move-result p0

    invoke-virtual {p1}, Lo/Tf;->V()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private e()Lo/hW;
    .locals 1

    .line 143
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 99
    invoke-static {v0, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p3

    .line 100
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 101
    sget-object p2, Lo/gf;->e:Lo/gf$TaskDescription;

    invoke-virtual {p2}, Lo/gf$TaskDescription;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->aK:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mx:I

    .line 104
    :goto_0
    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 105
    invoke-virtual {p2, v0}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    const-string p3, "date"

    invoke-virtual {p2, p3, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/RJ;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lo/Qz;->b(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/RJ;->d:Lo/QQ;

    invoke-virtual {v0, p1}, Lo/QQ;->b(Landroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/nD;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-static {p1}, Lo/Rt;->d(Ljava/util/Map;)[Lo/Rt;

    move-result-object p1

    .line 180
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/VideoCacheStateReported;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/discrete/VideoCacheStateReported;-><init>([Lcom/netflix/cl/model/CachedVideoInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public a(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;",
            "Ljava/util/List<",
            "Lo/Bi;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/RJ;->d:Lo/QQ;

    invoke-virtual {v0, p1, p2}, Lo/QQ;->b(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public b()Lo/Rq;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/RJ;->h:Lo/Rp;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/Td;
    .locals 3

    .line 233
    iget-object v0, p0, Lo/RJ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Td;

    .line 234
    invoke-interface {v1}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lo/nS;)Lo/nP;
    .locals 3

    .line 123
    invoke-static {}, Lo/dW;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lo/Sb;

    iget-object v1, p0, Lo/RJ;->a:Landroid/content/Context;

    new-instance v2, Lo/Sc;

    invoke-direct {v2}, Lo/Sc;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lo/Sb;-><init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Lo/of;

    iget-object v1, p0, Lo/RJ;->a:Landroid/content/Context;

    new-instance v2, Lo/Sc;

    invoke-direct {v2}, Lo/Sc;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lo/of;-><init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/RJ;->d:Lo/QQ;

    invoke-virtual {v0, p1}, Lo/QQ;->c(Ljava/util/Map;)V

    return-void
.end method

.method c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 249
    :cond_0
    iget-object v1, p0, Lo/RJ;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Tf;

    .line 250
    invoke-virtual {v2}, Lo/Tf;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lo/Tf;->c()I

    move-result v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_2
    sget-object p1, Lo/RM;->a:Lo/RM;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public c(Ljava/util/List;Lo/nJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/nJ;",
            ")V"
        }
    .end annotation

    const-string v0, "offlineUi"

    const-string v1, "sendGeoPlayabilityRequest"

    .line 149
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const-string p1, "videoIdList is empty"

    .line 151
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "sendGeoPlayabilityRequest calling... updateOfflineGeoPlayability"

    .line 155
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lo/RJ;->e()Lo/hW;

    move-result-object v0

    new-instance v1, Lo/RJ$3;

    invoke-direct {v1, p0, p2}, Lo/RJ$3;-><init>(Lo/RJ;Lo/nJ;)V

    invoke-interface {v0, p1, v1}, Lo/hW;->a(Ljava/util/List;Lo/ci;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/Bi;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/RJ;->h:Lo/Rp;

    invoke-virtual {v0, p1}, Lo/Rp;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)Lo/nL;
    .locals 0

    .line 89
    invoke-static {p1, p2, p3, p4, p5}, Lo/Qn;->d(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)Lo/Qn;

    move-result-object p1

    return-object p1
.end method

.method public e(I)V
    .locals 2

    .line 139
    invoke-direct {p0}, Lo/RJ;->e()Lo/hW;

    move-result-object v0

    new-instance v1, Lo/RJ$1;

    invoke-direct {v1, p0}, Lo/RJ$1;-><init>(Lo/RJ;)V

    invoke-interface {v0, p1, v1}, Lo/hW;->e(ILo/ci;)V

    return-void
.end method

.method public e(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;",
            "Ljava/util/List<",
            "Lo/Td;",
            ">;)V"
        }
    .end annotation

    .line 226
    iput-object p2, p0, Lo/RJ;->e:Ljava/util/List;

    .line 227
    iput-object p3, p0, Lo/RJ;->c:Ljava/util/List;

    .line 228
    iput-object p1, p0, Lo/RJ;->b:Ljava/util/Map;

    .line 229
    iget-object p2, p0, Lo/RJ;->h:Lo/Rp;

    iget-object p3, p0, Lo/RJ;->e:Ljava/util/List;

    iget-object v0, p0, Lo/RJ;->c:Ljava/util/List;

    invoke-virtual {p2, p1, p3, v0}, Lo/Rp;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public e(Lo/BC;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lo/RJ;->d:Lo/QQ;

    invoke-virtual {v0, p1, p2, p3}, Lo/QQ;->a(Lo/BC;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 188
    :cond_0
    iget-object v1, p0, Lo/RJ;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bi;

    if-nez v1, :cond_1

    return v0

    .line 193
    :cond_1
    invoke-interface {v1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    return v4

    .line 197
    :cond_2
    invoke-static {}, Lo/dG;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v2

    invoke-virtual {v2}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v2

    invoke-static {v2}, Lo/adR;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2, p1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v2

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v3, p0, Lo/RJ;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Tf;

    .line 205
    invoke-virtual {v5}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {v5}, Lo/Tf;->R()I

    move-result v5

    if-eqz v5, :cond_3

    .line 209
    iget p1, v2, Lo/Aa;->mBookmarkInSecond:I

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, v5

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 215
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {v1, p1}, Lo/Bi;->d(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :catchall_0
    move-exception p1

    .line 215
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return v0
.end method
