.class public Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;,
        Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;
    }
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

.field private final d:[Lo/Tf;


# direct methods
.method public constructor <init>(Lo/Tf;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Tf;",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    new-instance p2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    invoke-direct {p2, v0, p1, v3, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;Lo/Tf;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    .line 59
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->d:[Lo/Tf;

    goto/16 :goto_1

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 65
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Tf;

    .line 66
    invoke-virtual {v6}, Lo/Tf;->bb()Lo/AK;

    move-result-object v7

    invoke-interface {v7}, Lo/AK;->X()I

    move-result v7

    if-nez v5, :cond_1

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v1, v6, :cond_2

    add-int/lit8 v6, v1, 0x1

    .line 74
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Tf;

    invoke-virtual {v6}, Lo/Tf;->bb()Lo/AK;

    move-result-object v6

    invoke-interface {v6}, Lo/AK;->X()I

    move-result v6

    if-eq v7, v6, :cond_3

    .line 76
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Tf;

    .line 77
    invoke-virtual {p1, v7}, Lo/Tf;->e(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    new-instance v8, Lo/Tb;

    invoke-direct {v8, v6, v7}, Lo/Tb;-><init>(Lo/Tf;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v5, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lo/Tf;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/Tf;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->d:[Lo/Tf;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;Lo/Tf;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()[Lo/Tf;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->d:[Lo/Tf;

    return-object v0
.end method

.method public b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    return-object v0
.end method

.method public d(Ljava/util/Map;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;)J"
        }
    .end annotation

    .line 133
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$3;->e:[I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_0

    return-wide v1

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->d:[Lo/Tf;

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 140
    invoke-virtual {v4}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v6, :cond_1

    .line 141
    invoke-virtual {v4}, Lo/Tf;->w()J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-virtual {p1}, Lo/Tf;->w()J

    move-result-wide v0

    return-wide v0
.end method
