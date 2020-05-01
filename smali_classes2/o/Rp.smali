.class public Lo/Rp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Rq;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/Rq$Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Td;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Tf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Rp;->e:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Rp;->d:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lo/Rp;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Rp;->h:Ljava/util/Map;

    return-void
.end method

.method private static a(Lo/Bi;)Z
    .locals 1

    .line 544
    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Lo/Bi;)Z
    .locals 1

    .line 548
    invoke-static {p0}, Lo/RL;->c(Lo/Bi;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()V
    .locals 11

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v1, p0, Lo/Rp;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Td;

    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 343
    iget-boolean v5, p0, Lo/Rp;->f:Z

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lo/Td;->b()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-interface {v2}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lo/Rp;->e:Ljava/util/List;

    invoke-static {v5, v6}, Lo/Rn;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 349
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/Tf;

    .line 350
    invoke-virtual {v6}, Lo/Tf;->c()I

    move-result v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 352
    invoke-virtual {v6}, Lo/Tf;->bb()Lo/AK;

    move-result-object v6

    invoke-interface {v6}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v6

    .line 353
    iget-object v7, p0, Lo/Rp;->e:Ljava/util/List;

    invoke-static {v6, v7}, Lo/Rn;->a(Ljava/lang/String;Ljava/util/List;)Lo/Tf;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 354
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 357
    :cond_2
    invoke-interface {v2}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lo/Rp;->e:Ljava/util/List;

    invoke-static {v8, v9, v6}, Lo/Rn;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 358
    new-instance v9, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    invoke-interface {v2}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v8, v10}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;-><init>(Lo/Tf;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_3
    new-instance v7, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const/4 v8, 0x0

    invoke-interface {v2}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;-><init>(Lo/Tf;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 370
    :cond_5
    iput-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 371
    iget-object v2, p0, Lo/Rp;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lo/Rp;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OfflinePlayableUiListImpl"

    const-string v2, "updateUiPlayableList %d %d %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private j()Lo/Bi;
    .locals 4

    .line 554
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 555
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bi;

    .line 556
    invoke-interface {v1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/Bi;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const-string v0, "OfflinePlayableUiListImpl"

    const-string v1, "regenerate"

    .line 314
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-object p2, p0, Lo/Rp;->e:Ljava/util/List;

    .line 316
    iput-object p3, p0, Lo/Rp;->d:Ljava/util/List;

    .line 318
    invoke-direct {p0}, Lo/Rp;->i()V

    .line 320
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 321
    iget-object p3, p0, Lo/Rp;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Tf;

    .line 322
    invoke-virtual {v1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    :cond_0
    iput-object p1, p0, Lo/Rp;->c:Ljava/util/Map;

    .line 325
    iput-object p2, p0, Lo/Rp;->h:Ljava/util/Map;

    .line 326
    iget-object p1, p0, Lo/Rp;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Rq$Application;

    .line 327
    invoke-interface {p2}, Lo/Rq$Application;->N()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 329
    iget-object p3, p0, Lo/Rp;->c:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    iget-object p3, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    iget-object p3, p0, Lo/Rp;->h:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "regenerate %d %d %d"

    invoke-static {v0, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public b()I
    .locals 4

    .line 285
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 289
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bi;

    .line 290
    invoke-interface {v2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b(Lo/BC;)I
    .locals 5

    .line 250
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 255
    sget-object v3, Lo/Rp$4;->b:[I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 258
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-virtual {v3}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    :cond_3
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-nez v2, :cond_4

    .line 260
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "adapterData.getVideoAndProfileData().video not supposed to be null but found null"

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public b(Lo/Rq$Application;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/Rp;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 80
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 3

    .line 232
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 233
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSpace index mismatch, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->d(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(Landroid/content/Context;Lo/nS;)Lo/Bk;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 377
    iget-object v2, v0, Lo/Rp;->c:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 381
    :cond_0
    invoke-static/range {p1 .. p1}, Lo/RL;->b(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "OfflinePlayableUiListImpl"

    const-string v8, "getSnackbarStatus downloadCompleteSinceSwipe=%d"

    invoke-static {v6, v8, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 383
    invoke-interface/range {p2 .. p2}, Lo/nS;->i()Z

    move-result v5

    .line 384
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v4

    .line 385
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v9

    xor-int/2addr v9, v4

    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 389
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->nA:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 391
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->nv:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 394
    :goto_0
    iget-object v8, v0, Lo/Rp;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    .line 395
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v9

    const-string v10, "status"

    if-ne v9, v4, :cond_9

    .line 396
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bi;

    .line 397
    invoke-static {v2}, Lo/RL;->c(Lo/Bi;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    new-instance v2, Lo/Bk;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nJ:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v4, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    return-object v2

    .line 400
    :cond_3
    invoke-static {v2}, Lo/Rp;->a(Lo/Bi;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 402
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nq:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v7, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    return-object v2

    .line 404
    :cond_4
    invoke-static {v2}, Lo/Rp;->e(Lo/Bi;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v5, :cond_5

    .line 406
    new-instance v2, Lo/Bk;

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->no:I

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    new-instance v2, Lo/Bk;

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    .line 409
    :goto_1
    iput-boolean v4, v2, Lo/Bk;->a:Z

    return-object v2

    .line 414
    :cond_6
    invoke-direct/range {p0 .. p0}, Lo/Rp;->j()Lo/Bi;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_1b

    .line 416
    :cond_7
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nr:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 417
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nm:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2, v4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_2

    :cond_8
    new-instance v1, Lo/Bk;

    invoke-direct {v1, v2, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    :goto_2
    return-object v1

    .line 430
    :cond_9
    iget-object v8, v0, Lo/Rp;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/Bi;

    add-int/lit8 v9, v9, 0x1

    .line 432
    invoke-static {v15}, Lo/RL;->c(Lo/Bi;)Z

    move-result v16

    if-eqz v16, :cond_a

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 434
    :cond_a
    invoke-static {v15}, Lo/Rp;->a(Lo/Bi;)Z

    move-result v16

    if-eqz v16, :cond_b

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 436
    :cond_b
    invoke-static {v15}, Lo/Rp;->e(Lo/Bi;)Z

    move-result v15

    if-eqz v15, :cond_c

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_d
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 442
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v4

    const/4 v15, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v15

    const-string v15, "total=%d failed=%d completed=%d paused=%d queued=%d downloadCompletedSinceSwipe=%d"

    invoke-static {v6, v15, v8}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ne v9, v12, :cond_e

    move-object v5, v3

    :cond_e
    if-ge v2, v12, :cond_f

    goto :goto_4

    :cond_f
    move v2, v12

    :goto_4
    add-int/2addr v14, v13

    if-ne v9, v2, :cond_10

    .line 453
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nq:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 454
    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v11, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    return-object v2

    :cond_10
    if-ne v13, v9, :cond_11

    .line 458
    new-instance v2, Lo/Bk;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    .line 459
    iput-boolean v4, v2, Lo/Bk;->a:Z

    return-object v2

    :cond_11
    if-ne v11, v9, :cond_12

    .line 463
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ns:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v11}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 464
    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v11}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    return-object v2

    :cond_12
    if-eqz v5, :cond_13

    move-object v6, v5

    goto :goto_5

    :cond_13
    if-lez v11, :cond_14

    .line 472
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->ny:I

    invoke-static {v6}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v6

    invoke-virtual {v6, v11}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v6

    invoke-virtual {v6}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_14
    move-object v6, v3

    :goto_5
    if-lez v13, :cond_16

    if-ne v14, v13, :cond_16

    if-nez v5, :cond_15

    .line 477
    new-instance v2, Lo/Bk;

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    :cond_15
    new-instance v2, Lo/Bk;

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nu:I

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v7}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    .line 480
    :goto_6
    iput-boolean v4, v2, Lo/Bk;->a:Z

    return-object v2

    :cond_16
    if-lez v14, :cond_18

    add-int/2addr v14, v2

    .line 485
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nr:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v14}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v10, v6}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 486
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nm:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2, v14}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v11}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_7

    :cond_17
    new-instance v1, Lo/Bk;

    invoke-direct {v1, v2, v11}, Lo/Bk;-><init>(Ljava/lang/String;I)V

    :goto_7
    return-object v1

    :cond_18
    if-lez v2, :cond_1a

    .line 497
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 498
    new-instance v1, Lo/Bk;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nq:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    goto :goto_8

    .line 500
    :cond_19
    new-instance v1, Lo/Bk;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nn:I

    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2, v10, v6}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    :goto_8
    return-object v1

    :cond_1a
    if-lez v11, :cond_1b

    .line 508
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ns:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v11}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 509
    new-instance v2, Lo/Bk;

    invoke-direct {v2, v1, v11, v4}, Lo/Bk;-><init>(Ljava/lang/String;IZ)V

    return-object v2

    :cond_1b
    :goto_9
    return-object v3
.end method

.method public d()I
    .locals 4

    .line 271
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bi;

    .line 276
    invoke-interface {v2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public d(I)Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lo/Bi;
    .locals 1

    .line 300
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bi;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lo/Rq$Application;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/Rp;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lo/Rp;->f:Z

    .line 335
    invoke-direct {p0}, Lo/Rp;->i()V

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lo/Rp;->b(Lo/BC;)I

    move-result v0

    return v0
.end method

.method public synthetic e(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lo/Rp;->d(I)Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lo/Tf;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/Rp;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/Rp;->a:Ljava/util/List;

    return-object v0
.end method

.method public g()I
    .locals 5

    .line 533
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 534
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bi;

    .line 535
    invoke-interface {v2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public h()Z
    .locals 4

    .line 520
    iget-object v0, p0, Lo/Rp;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 521
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Bi;

    .line 522
    invoke-interface {v1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
