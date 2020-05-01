.class public Lo/ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aC;


# instance fields
.field private d:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/ay;->d:Z

    .line 47
    iput-boolean p1, p0, Lo/ay;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 8

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p2, v0}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 139
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    new-instance v7, Lo/ay$2;

    invoke-direct {v7, p0, p2, p1}, Lo/ay$2;-><init>(Lo/ay;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lo/zG;->d(Ljava/lang/String;IIZZLo/zU;)Z

    return-void
.end method

.method private b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "genre"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 156
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    new-instance v1, Lo/ay$3;

    invoke-direct {v1, p0, p2, p1}, Lo/ay$3;-><init>(Lo/ay;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lo/zG;->a(Ljava/lang/String;Lo/zU;)Z

    return-void
.end method

.method private c(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "audio-description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .line 127
    iget-boolean v0, p0, Lo/ay;->d:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lo/ay;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/ay;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 133
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->a:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method private d(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 202
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "specials"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "blackhistorymonth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    const-string v0, "NetflixComBrowseHandler"

    const-string v1, "Starting trailers feed activity"

    .line 179
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$TaskDescription;->e:Lo/u$TaskDescription;

    .line 182
    invoke-virtual {v0, v1}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    sget-object p1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object p1
.end method

.method private e(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "coming-soon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lo/ay;->e(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lo/ay;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, p1}, Lo/ay;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    invoke-direct {p0, p1}, Lo/ay;->d(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 115
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewTitlesCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewTitlesCommand;-><init>()V

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2
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

    .line 92
    sget-object p3, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->b:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    sget-object p2, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 96
    sget-object p3, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->d:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_1

    .line 97
    :cond_0
    invoke-direct {p0, p2}, Lo/ay;->e(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lo/ay;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lo/ay;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "assistiveAudio"

    .line 101
    invoke-direct {p0, p2, p1}, Lo/ay;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p3

    goto :goto_1

    .line 102
    :cond_2
    invoke-direct {p0, p2}, Lo/ay;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/util/EndpointUtilities;->isTestStack(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "genre-81251087"

    goto :goto_0

    :cond_3
    const-string p2, "genre-81243939"

    .line 104
    :goto_0
    invoke-direct {p0, p2, p1}, Lo/ay;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p3

    goto :goto_1

    .line 105
    :cond_4
    invoke-direct {p0, p2}, Lo/ay;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p3, 0x2

    .line 106
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 107
    invoke-direct {p0, p2, p1}, Lo/ay;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object p3

    :cond_5
    :goto_1
    return-object p3
.end method
