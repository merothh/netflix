.class public Lo/xN;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Lo/bV;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/bV;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lo/xN;->e:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lo/xN;->b:Lo/bV;

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 589
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Z)I

    move-result p4

    .line 593
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/xW;

    .line 596
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v2, v3}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 597
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 601
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v2, v3}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 602
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 606
    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v2, v3}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 608
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 612
    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v2, v3}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 613
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p4, :cond_1

    :cond_6
    return v0
.end method

.method private a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;Z)I"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 570
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 574
    :cond_0
    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    .line 578
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 581
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x6

    .line 575
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lo/xN;)Lo/bV;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/xN;->b:Lo/bV;

    return-object p0
.end method

.method private a(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 434
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Az;

    .line 435
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-static {v0}, Lo/xU;->c(Lo/Az;)Lo/xW;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 375
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v0, Lo/xN$2;

    invoke-direct {v0, p0, p2, p3}, Lo/xN$2;-><init>(Lo/xN;Ljava/lang/String;Lo/xY;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "video.id: %s, url is null"

    .line 382
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nf_preappagentdatahandler"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ">;",
            "Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;",
            ")V"
        }
    .end annotation

    .line 628
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/xN;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->h(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->i(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 645
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_4
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_5
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 653
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method static synthetic a(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method private b()Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 1

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>()V

    .line 72
    invoke-direct {p0, v0}, Lo/xN;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-object v0
.end method

.method static synthetic b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/xN;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 4

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 771
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 772
    invoke-direct {p0, v2, p1}, Lo/xN;->e(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearImagesNotPresentInNewList, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_preappagentdatahandler"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 779
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lo/xN;->c(Ljava/lang/String;)V

    .line 780
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 8

    .line 288
    iget-object v0, p0, Lo/xN;->e:Landroid/content/Context;

    invoke-static {v0}, Lo/ir;->e(Landroid/content/Context;)Z

    move-result v0

    .line 289
    invoke-direct {p0, p1, v0}, Lo/xN;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Z)I

    move-result v1

    .line 291
    new-instance v7, Lo/xN$20;

    invoke-direct {v7, p0, v1, p1, p2}, Lo/xN$20;-><init>(Lo/xN;ILcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "urlFetchCount=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nf_preappagentdatahandler"

    invoke-static {v3, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v0, "no images to fetch - store newData"

    .line 309
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1, p2}, Lo/xN;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-object v1, p0

    move v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    .line 313
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    .line 314
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    .line 315
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    .line 316
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    .line 317
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct/range {v1 .. v6}, Lo/xN;->c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    .line 482
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoTrackMap:Ljava/util/Map;

    .line 483
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 484
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 485
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 488
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/xN;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/xN;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 496
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/xN;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 501
    :cond_3
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 502
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 504
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/xN;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 507
    :cond_4
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 508
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 510
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/xN;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ")V"
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object p3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    goto :goto_0

    .line 444
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object p3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    goto :goto_0

    .line 446
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object p3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    goto :goto_0

    .line 448
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 449
    iget-object p3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 453
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AR;

    .line 454
    check-cast p2, Lo/agg;

    invoke-static {p2}, Lo/xU;->b(Lo/agg;)Lo/xW;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic b(Lo/xN;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/xN;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method static synthetic b(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p7}, Lo/xN;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V

    return-void
.end method

.method static synthetic b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/xN;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 798
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/xW;

    .line 799
    invoke-virtual {v1, p1}, Lo/xW;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method static synthetic b(Lo/xN;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/xN;->d()Z

    move-result p0

    return p0
.end method

.method private c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V
    .locals 12

    .line 666
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/hW;

    .line 667
    invoke-interface {v4}, Lo/hW;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_preappagentdatahandler"

    const-string v1, "ignore fetchLists, browseAgent not ready!!"

    .line 668
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 673
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v11, Lo/xN$4;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p7

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lo/xN$4;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/hW;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V

    invoke-virtual {v0, v11}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "nf_preappagentdatahandler"

    const-string p2, "newData is null"

    .line 388
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_0
    new-instance v0, Lo/xN$5;

    invoke-direct {v0, p0, p2, p1}, Lo/xN$5;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 402
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    .line 405
    new-instance p2, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/xN$1;

    invoke-direct {v1, p0, p1, v0}, Lo/xN$1;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/aeL$TaskDescription;)V

    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ")V"
        }
    .end annotation

    .line 460
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->specialsList:Ljava/util/List;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 464
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 465
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 466
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 469
    invoke-static {v1}, Lo/xU;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lo/xW;

    move-result-object p3

    :cond_1
    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 472
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 807
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 812
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 813
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 814
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 818
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lo/xN$8;

    invoke-direct {v2, p0, v0, p1}, Lo/xN$8;-><init>(Lo/xN;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;ZLo/xY;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Z",
            "Lo/xY;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-nez v1, :cond_0

    return-void

    :cond_0
    move/from16 v5, p4

    .line 327
    invoke-direct {v0, v3, v1, v5}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Z)I

    move-result v5

    .line 330
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/xW;

    if-lt v7, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 340
    sget-object v9, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v9, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-string v12, "%s(%s), url:%s exists in urlMap - skip"

    const-string v13, "nf_preappagentdatahandler"

    const/4 v14, 0x1

    if-eqz v9, :cond_3

    .line 341
    sget-object v9, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v8, v9}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v9

    .line 342
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 343
    iget-object v15, v8, Lo/xW;->id:Ljava/lang/String;

    invoke-direct {v0, v15, v9, v4}, Lo/xN;->a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V

    goto :goto_1

    :cond_2
    new-array v15, v11, [Ljava/lang/Object;

    .line 345
    iget-object v11, v8, Lo/xW;->id:Ljava/lang/String;

    aput-object v11, v15, v6

    sget-object v11, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v11, v15, v14

    aput-object v9, v15, v10

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3
    :goto_1
    sget-object v9, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v8, v9}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 351
    iget-object v11, v8, Lo/xW;->id:Ljava/lang/String;

    invoke-direct {v0, v11, v9, v4}, Lo/xN;->a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V

    goto :goto_2

    :cond_4
    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    .line 353
    iget-object v11, v8, Lo/xW;->id:Ljava/lang/String;

    aput-object v11, v15, v6

    sget-object v11, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v11, v15, v14

    aput-object v9, v15, v10

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_2
    sget-object v9, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v8, v9}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v9

    .line 357
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v9}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 358
    iget-object v11, v8, Lo/xW;->id:Ljava/lang/String;

    invoke-direct {v0, v11, v9, v4}, Lo/xN;->a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V

    goto :goto_3

    :cond_5
    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    .line 360
    iget-object v11, v8, Lo/xW;->id:Ljava/lang/String;

    aput-object v11, v15, v6

    sget-object v11, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v11, v15, v14

    aput-object v9, v15, v10

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_3
    sget-object v9, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v8, v9}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v9

    .line 363
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v9}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 364
    iget-object v8, v8, Lo/xW;->id:Ljava/lang/String;

    invoke-direct {v0, v8, v9, v4}, Lo/xN;->a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 366
    iget-object v8, v8, Lo/xW;->id:Ljava/lang/String;

    aput-object v8, v11, v6

    sget-object v8, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v8, v11, v14

    aput-object v9, v11, v10

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/xN;->b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    return-void
.end method

.method private c(Lo/xQ$ActionBar;)V
    .locals 2

    .line 718
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/xN$6;

    invoke-direct {v1, p0, p1}, Lo/xN$6;-><init>(Lo/xN;Lo/xQ$ActionBar;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Z)I
    .locals 4

    .line 554
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 555
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1, p2}, Lo/xN;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/Map;Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic d(Lo/xN;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/xN;->e:Landroid/content/Context;

    return-object p0
.end method

.method private d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v2, "mergeData updateType:%s"

    .line 731
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_preappagentdatahandler"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v1, Lo/xN$9;->b:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    goto :goto_1

    .line 752
    :cond_1
    iget-object p3, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    invoke-virtual {p2, p3, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyList(Ljava/util/List;Ljava/util/List;)V

    .line 753
    iget-object p3, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->specialsList:Ljava/util/List;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->specialsList:Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object p3, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object p3, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyList(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 738
    :cond_4
    iget-object p3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    invoke-virtual {p1, p3, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyList(Ljava/util/List;Ljava/util/List;)V

    .line 739
    iget-object p2, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->deepCopyUrlMap(Ljava/util/Map;)V

    :goto_1
    const-string p2, "merged data:"

    .line 763
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "listType="

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/xN;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/xN;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 426
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ax;

    .line 427
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-static {v0}, Lo/xU;->a(Lo/Ax;)Lo/xW;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/xN;->b(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method static synthetic d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method private d()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lo/xN;->b:Lo/bV;

    .line 847
    invoke-virtual {v0}, Lo/bV;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->minusoneConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;

    move-result-object v0

    .line 851
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;->areExtrasDisabled(Lcom/netflix/mediaclient/service/webclient/model/leafs/MinusoneConfig;)Z

    move-result v0

    return v0
.end method

.method protected static e(Landroid/content/Context;)I
    .locals 0

    .line 713
    invoke-static {p0}, Lo/ir;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "&"

    if-eqz v1, :cond_0

    const-string v1, "listType="

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result p2

    if-lez p2, :cond_1

    const-string p2, "trkid="

    .line 528
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "listType="

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lo/xN;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/xN;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOthers updateType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_preappagentdatahandler"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lo/xN;->b:Lo/bV;

    invoke-virtual {v0}, Lo/bV;->getPreAppAgent()Lo/xR;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/xR;->c(Landroid/content/Context;)V

    .line 419
    :cond_0
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-interface {v0, p1}, Lo/Cl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const-class v0, Lo/Cl;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cl;

    invoke-interface {v0, p1, p2, p3}, Lo/Cl;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    :cond_1
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 3

    .line 832
    iget-object v0, p0, Lo/xN;->b:Lo/bV;

    invoke-virtual {v0}, Lo/bV;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->s()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 836
    :cond_0
    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppPartnerExperience:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lo/xN;->b:Lo/bV;

    invoke-virtual {v0}, Lo/bV;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->r()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 842
    :cond_1
    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppWidgetExperience:Ljava/lang/String;

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 1

    .line 246
    new-instance v0, Lo/xN$17;

    invoke-direct {v0, p0, p1, p2}, Lo/xN$17;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 283
    invoke-direct {p0, v0}, Lo/xN;->c(Lo/xQ$ActionBar;)V

    return-void
.end method

.method static synthetic e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/xN;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 1

    .line 785
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    .line 786
    invoke-direct {p0, p1, v0}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    .line 787
    invoke-direct {p0, p1, v0}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    .line 788
    invoke-direct {p0, p1, v0}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    .line 789
    invoke-direct {p0, p1, v0}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    .line 790
    invoke-direct {p0, p1, p2}, Lo/xN;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 78
    invoke-direct/range {p0 .. p0}, Lo/xN;->b()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 81
    invoke-direct {v11, v3, v12}, Lo/xN;->a(Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 83
    new-instance v13, Lo/xN$3;

    invoke-direct {v13, v11, v2, v3, v12}, Lo/xN$3;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 114
    new-instance v14, Lo/xN$7;

    invoke-direct {v14, v11, v2, v3, v12}, Lo/xN$7;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 130
    new-instance v15, Lo/xN$13;

    invoke-direct {v15, v11, v2, v3, v12}, Lo/xN$13;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 146
    new-instance v10, Lo/xN$14;

    invoke-direct {v10, v11, v2, v3, v12}, Lo/xN$14;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 162
    new-instance v9, Lo/xN$11;

    invoke-direct {v9, v11, v2, v3, v12}, Lo/xN$11;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 185
    new-instance v8, Lo/xN$12;

    invoke-direct {v8, v11, v2, v3, v12}, Lo/xN$12;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 209
    new-instance v7, Lo/xN$15;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move-object v6, v14

    move-object v11, v7

    move-object v7, v15

    move-object/from16 v16, v8

    move-object v8, v10

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lo/xN$15;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V

    .line 231
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, v12}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    .line 232
    invoke-direct/range {v0 .. v7}, Lo/xN;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V

    goto :goto_3

    .line 235
    :cond_0
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    .line 236
    invoke-static {}, Lo/ady;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Lo/ep;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 237
    :goto_1
    invoke-interface {v0}, Lo/hW;->isReady()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_2

    :cond_3
    const/16 v1, 0x15

    .line 238
    :goto_2
    invoke-interface {v0, v3, v2, v1, v11}, Lo/hW;->c(Ljava/lang/String;IILo/ci;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected c(Landroid/content/Context;)I
    .locals 0

    .line 708
    invoke-static {p1}, Lo/ir;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method public c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 2

    .line 861
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->j(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "skip clearing data - invalid updateType= %s"

    .line 862
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_preappagentdatahandler"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 866
    :cond_0
    new-instance v0, Lo/xN$10;

    invoke-direct {v0, p0, p1}, Lo/xN$10;-><init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 891
    invoke-direct {p0, v0}, Lo/xN;->c(Lo/xQ$ActionBar;)V

    return-void
.end method
