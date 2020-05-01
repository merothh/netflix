.class public final Lo/DJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lo/DJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/DJ;

    invoke-direct {v0}, Lo/DJ;-><init>()V

    sput-object v0, Lo/DJ;->e:Lo/DJ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Lo/Bc;Z)Ljava/lang/String;
    .locals 1

    .line 320
    invoke-interface {p1}, Lo/Bc;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 321
    instance-of p2, p1, Lo/Bb;

    if-eqz p2, :cond_0

    .line 322
    check-cast p1, Lo/Bb;

    invoke-interface {p1}, Lo/Bb;->az()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v0, p1

    .line 330
    :cond_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {v0}, Lo/aev;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringUtils.decodeHtmlEntities(synopsis)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final e(Ljava/util/List;ZZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;ZZZ)",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 129
    new-instance p4, Lo/DQ;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Lo/DQ;-><init>(I)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 132
    new-instance p2, Lo/DQ;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Lo/DQ;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 135
    new-instance p2, Lo/DQ;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lo/DQ;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method private final e(Lo/Bc;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p1}, Lo/Bc;->aT()Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lo/Bc;)Lcom/netflix/model/leafs/SupportedMediaTracks;
    .locals 3

    const/4 v0, 0x0

    .line 356
    move-object v1, v0

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks;

    if-eqz p1, :cond_2

    .line 360
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lo/agg;

    if-eqz v1, :cond_0

    .line 361
    check-cast p1, Lo/agg;

    invoke-interface {p1}, Lo/agg;->bu()Lo/agg;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/agg;->bp()Lcom/netflix/model/leafs/SupportedMediaTracks;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_0
    invoke-interface {p1}, Lo/Bc;->bp()Lcom/netflix/model/leafs/SupportedMediaTracks;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public final b(Lo/Bc;I)I
    .locals 3

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lo/DJ;->b(Lo/Bc;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 374
    check-cast v2, Lo/DQ;

    .line 145
    invoke-virtual {v2}, Lo/DQ;->e()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    const/4 v0, -0x1

    :cond_3
    :goto_2
    return v0
.end method

.method public final b(Lo/Bc;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bc;",
            ")",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;"
        }
    .end annotation

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    const-string v1, "details.type"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 82
    move-object v3, p1

    check-cast v3, Lo/Be;

    invoke-interface {v3}, Lo/Be;->aD()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v3

    .line 84
    invoke-static {}, Lo/adq;->c()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-static {}, Lo/ady;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    .line 87
    invoke-interface {v3}, Lcom/netflix/model/leafs/TrackableListSummary;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 85
    invoke-interface {v3}, Lcom/netflix/model/leafs/TrackableListSummary;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 89
    :goto_2
    invoke-static {p1}, Lo/aez;->c(Lo/Bc;)Z

    move-result p1

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 93
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v7, 0x2

    if-ne v6, v0, :cond_4

    if-eqz v3, :cond_3

    .line 95
    new-instance v0, Lo/DQ;

    invoke-direct {v0, v2}, Lo/DQ;-><init>(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_8

    .line 98
    new-instance p1, Lo/DQ;

    invoke-direct {p1, v7}, Lo/DQ;-><init>(I)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    :cond_4
    sget-object v0, Lo/fc;->d:Lo/fc$StateListAnimator;

    invoke-virtual {v0}, Lo/fc$StateListAnimator;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 102
    invoke-direct {p0, v4, v1, p1, v3}, Lo/DJ;->e(Ljava/util/List;ZZZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 105
    new-instance v0, Lo/DQ;

    invoke-direct {v0, v5}, Lo/DQ;-><init>(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p1, :cond_7

    .line 108
    new-instance p1, Lo/DQ;

    invoke-direct {p1, v7}, Lo/DQ;-><init>(I)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v3, :cond_8

    .line 111
    new-instance p1, Lo/DQ;

    invoke-direct {p1, v2}, Lo/DQ;-><init>(I)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-object v4
.end method

.method public final b(Ljava/util/List;I)Lo/DQ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;I)",
            "Lo/DQ;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    check-cast v0, Lo/DQ;

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 153
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/DQ;

    :cond_0
    return-object v0
.end method

.method public final b(Lo/Bc;Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 338
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    const-string v0, "videoDetails.playable"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 342
    :cond_0
    invoke-virtual {p0, p2}, Lo/DJ;->d(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/String;Lo/DQ;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "tabConfig"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Lo/DQ;->e()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 63
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fQ:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026s_data_selector_trailers)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jJ:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fO:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026_selector_related_barker)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fK:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026s_data_selector_episodes)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;
    .locals 5

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "activity.serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 175
    move-object v2, v1

    check-cast v2, Lo/zD;

    .line 177
    invoke-static {v0}, Lo/Mn;->b(Lo/Am;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/zN;->j()Lo/kC;

    move-result-object v1

    :cond_0
    move-object v2, v1

    check-cast v2, Lo/zD;

    :cond_1
    if-nez v2, :cond_2

    .line 183
    new-instance v1, Lo/DJ$Application;

    invoke-direct {v1, v0}, Lo/DJ$Application;-><init>(Lo/Am;)V

    move-object v2, v1

    check-cast v2, Lo/zD;

    .line 208
    :cond_2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 209
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->a:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    .line 210
    check-cast p1, Lo/AF;

    invoke-static {v2, p1}, Lo/adq;->a(Lo/zD;Lo/AF;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 209
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {v2, p1}, Lo/adq;->e(Lo/zD;Lo/AF;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 217
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->b:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_3
    invoke-static {v2, p1}, Lo/adq;->c(Lo/zD;Lo/AF;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->e:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_4
    invoke-static {v2, p1}, Lo/adq;->d(Lo/zD;Lo/AF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->d:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_5
    invoke-static {v2, p1}, Lo/adq;->b(Lo/zD;Lo/AF;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 229
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->c:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_6
    :goto_0
    new-instance p1, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;

    const-class v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-direct {p1, v1}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;-><init>(Ljava/lang/Class;)V

    .line 245
    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "capability.value"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 248
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "capabilityStringId"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method public final c(Lo/Bc;)Lo/DC$DialogInterface;
    .locals 8

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p1}, Lo/DJ;->e(Lo/Bc;)Z

    move-result v6

    .line 261
    invoke-direct {p0, p1, v6}, Lo/DJ;->c(Lo/Bc;Z)Ljava/lang/String;

    move-result-object v2

    .line 263
    instance-of v0, p1, Lo/Bb;

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lo/Bb;

    invoke-interface {v3}, Lo/Bb;->aB()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 265
    move-object v0, p1

    check-cast v0, Lo/Bb;

    invoke-interface {v0}, Lo/Bb;->l()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 267
    :goto_1
    new-instance v0, Lo/DC$DialogInterface;

    .line 269
    invoke-interface {p1}, Lo/Bc;->aP()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-interface {p1}, Lo/Bc;->aM()I

    move-result v7

    move-object v1, v0

    .line 267
    invoke-direct/range {v1 .. v7}, Lo/DC$DialogInterface;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public final d(Lo/Bc;)Lo/DC$Intent;
    .locals 10

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Lo/DJ;->e(Lo/Bc;)Z

    move-result v0

    .line 279
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    .line 283
    instance-of v1, p1, Lo/AX;

    if-eqz v1, :cond_1

    .line 284
    move-object v1, p1

    check-cast v1, Lo/AX;

    invoke-interface {v1}, Lo/AX;->x()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-interface {v1}, Lo/AX;->C()I

    move-result v1

    goto :goto_1

    .line 286
    :cond_1
    instance-of v1, p1, Lo/Bb;

    if-eqz v1, :cond_2

    .line 287
    move-object v1, p1

    check-cast v1, Lo/Bb;

    invoke-interface {v1}, Lo/Bb;->at()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-interface {v1}, Lo/Bb;->av()I

    move-result v1

    :goto_1
    move v7, v1

    move-object v6, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 290
    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 295
    instance-of v0, p1, Lo/Bb;

    if-eqz v0, :cond_3

    .line 297
    move-object v0, p1

    check-cast v0, Lo/Bb;

    invoke-interface {v0}, Lo/Bb;->l()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    move v9, v3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 303
    :goto_3
    new-instance v0, Lo/DC$Intent;

    .line 304
    invoke-interface {p1}, Lo/Bc;->aH()Ljava/lang/String;

    move-result-object v5

    move-object v4, v0

    .line 303
    invoke-direct/range {v4 .. v9}, Lo/DC$Intent;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 2

    .line 346
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 347
    invoke-static {p1}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 348
    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
