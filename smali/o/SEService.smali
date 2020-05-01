.class public final Lo/SEService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/TextInputTimePickerView;

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lo/TextInputTimePickerView;

.field public static final d:Lo/TextInputTimePickerView;

.field public static final e:Lo/TextInputTimePickerView;

.field public static final f:Lo/TextInputTimePickerView;

.field private static final h:Lo/TextInputTimePickerView;

.field public static final j:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "summary"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "detail"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v5, "bookmark"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string v7, "offlineAvailable"

    const/4 v8, 0x3

    aput-object v7, v0, v8

    .line 25
    invoke-static {v0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/SEService;->b:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Object;

    const-string v9, "episodes"

    aput-object v9, v0, v2

    const-string v10, "current"

    aput-object v10, v0, v4

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v3, v11, v2

    aput-object v5, v11, v4

    aput-object v7, v11, v6

    .line 32
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v0, v6

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->d:Lo/TextInputTimePickerView;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v3, v11, v2

    aput-object v5, v11, v4

    aput-object v7, v11, v6

    .line 33
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v0, v6

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->c:Lo/TextInputTimePickerView;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v5, v9, v4

    aput-object v7, v9, v6

    .line 34
    invoke-static {v9}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->e:Lo/TextInputTimePickerView;

    new-array v0, v4, [Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v5, "previewArt"

    aput-object v5, v3, v4

    const-string v5, "artworkColors"

    aput-object v5, v3, v6

    .line 35
    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->a:Lo/TextInputTimePickerView;

    new-array v0, v4, [Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "previewArtV2"

    aput-object v1, v3, v4

    aput-object v5, v3, v6

    .line 36
    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->f:Lo/TextInputTimePickerView;

    .line 37
    sget-object v0, Lo/SEService;->d:Lo/TextInputTimePickerView;

    sput-object v0, Lo/SEService;->j:Lo/TextInputTimePickerView;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "tallPanelArt"

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    sput-object v0, Lo/SEService;->h:Lo/TextInputTimePickerView;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "detail"

    const-string v1, "rating"

    const-string v2, "advisories"

    const-string v3, "inQueue"

    .line 510
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "videos"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 487
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    invoke-static {}, Lo/SEService;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 495
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v2, :cond_0

    .line 497
    invoke-static {}, Lo/SEService;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 500
    invoke-static {}, Lo/SEService;->b()Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v2, :cond_1

    .line 502
    invoke-static {}, Lo/SEService;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    :cond_1
    :goto_0
    invoke-interface {p0, v1}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "similars"

    aput-object v1, v0, p0

    const/16 p0, 0xb

    .line 265
    invoke-static {p0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x4

    const-string v1, "summary"

    aput-object v1, v0, p0

    .line 263
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;III)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "lolomos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 593
    invoke-static {p1, p2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 594
    invoke-static {p3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    .line 590
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "similars"

    aput-object v1, v0, p0

    const/16 p0, 0xb

    .line 271
    invoke-static {p0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x4

    const-string v1, "summary"

    aput-object v1, v0, p0

    .line 269
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lo/TextInputTimePickerView;",
            ")",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videoEvidence"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 223
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    invoke-interface {p0, p1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZZZ)Lo/TextInputTimePickerView;
    .locals 3

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "summary"

    .line 147
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "trickplayBaseUrl"

    .line 150
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "volatileBitmaskedDetails"

    .line 153
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "detail"

    aput-object p2, p0, p1

    const/4 p2, 0x1

    const-string v1, "rating"

    aput-object v1, p0, p2

    const/4 v1, 0x2

    const-string v2, "inQueue"

    aput-object v2, p0, v1

    const/4 v1, 0x3

    const-string v2, "bookmark"

    aput-object v2, p0, v1

    const/4 v1, 0x4

    const-string v2, "offlineAvailable"

    aput-object v2, p0, v1

    .line 155
    invoke-static {p0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p0, p2, [Ljava/lang/Object;

    aput-object v0, p0, p1

    .line 156
    invoke-static {p0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "bookmark"

    const-string v1, "rating"

    const-string v2, "inQueue"

    const-string v3, "detail"

    const/4 v4, 0x4

    const-string v5, "videos"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz p2, :cond_0

    new-array p2, v9, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v8

    aput-object v2, p1, v7

    aput-object v1, p1, v6

    aput-object v0, p1, v9

    .line 372
    invoke-static {p1}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, p2, v6

    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-array p2, v9, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v8

    aput-object v2, v10, v7

    aput-object v1, v10, v6

    .line 376
    invoke-static {v10}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, p2, v6

    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    const-string v1, "seasons"

    aput-object v1, p2, v6

    const-string v2, "summary"

    aput-object v2, p2, v9

    .line 379
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    const-string p3, "supportedMediaTracks"

    .line 385
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p3, 0x5

    new-array v0, p3, [Ljava/lang/Object;

    aput-object v5, v0, v8

    aput-object p1, v0, v7

    const-string v2, "episodes"

    aput-object v2, v0, v6

    const-string v10, "current"

    aput-object v10, v0, v9

    aput-object p2, v0, v4

    .line 387
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    aput-object v1, p2, v6

    aput-object v10, p2, v9

    .line 390
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p2, p3, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    aput-object v1, p2, v6

    const-string v0, "latest"

    aput-object v0, p2, v9

    aput-object v3, p2, v4

    .line 393
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v5, p2, v8

    aput-object p1, p2, v7

    aput-object v1, p2, v6

    aput-object v0, p2, v9

    aput-object v2, p2, v4

    const/16 p1, 0x63

    .line 408
    invoke-static {p1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p1

    aput-object p1, p2, p3

    const/4 p1, 0x6

    sget-object p3, Lo/SEService;->b:Ljava/util/List;

    aput-object p3, p2, p1

    .line 402
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZZZ)V"
        }
    .end annotation

    .line 89
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 91
    invoke-static {p4, p5, p6}, Lo/SEService;->a(ZZZ)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object p2, Lo/SEService;->d:Lo/TextInputTimePickerView;

    invoke-interface {p2, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Lo/TextInputTimePickerView;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "episodes"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "current"

    aput-object v4, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "detail"

    aput-object v4, v0, v2

    const-string v2, "bookmark"

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v3, "offlineAvailable"

    aput-object v3, v0, v2

    .line 527
    invoke-static {v0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v2

    .line 524
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v3, "trailers"

    aput-object v3, v0, p0

    const/16 v3, 0x18

    .line 285
    invoke-static {v3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "summary"

    aput-object v4, v3, v1

    const-string v1, "trickplayBaseUrl"

    aput-object v1, v3, v2

    const-string v1, "detail"

    aput-object v1, v3, p0

    .line 286
    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 281
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    const-string p1, "scenes"

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p2, v0, p0

    const/4 p0, 0x4

    const-string p1, "summary"

    aput-object p1, v0, p0

    .line 313
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "trailers"

    aput-object v1, v0, p0

    const/4 p0, 0x3

    const-string v1, "summary"

    aput-object v1, v0, p0

    .line 307
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Lo/TextInputTimePickerView;
    .locals 5

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "summary"

    .line 163
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "detail"

    aput-object v2, p0, v1

    const/4 v2, 0x1

    const-string v3, "bookmark"

    aput-object v3, p0, v2

    const/4 v3, 0x2

    const-string v4, "offlineAvailable"

    aput-object v4, p0, v3

    .line 165
    invoke-static {p0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object v0, p0, v1

    .line 166
    invoke-static {p0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;Lo/TextInputTimePickerView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "II)V"
        }
    .end annotation

    .line 137
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 138
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object p2, Lo/SEService;->h:Lo/TextInputTimePickerView;

    invoke-interface {p2, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZ)V"
        }
    .end annotation

    .line 96
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 98
    invoke-static {p4}, Lo/SEService;->b(Z)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object p2, Lo/SEService;->c:Lo/TextInputTimePickerView;

    invoke-interface {p2, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    .line 56
    invoke-static {p0, v0}, Lo/aev;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "similars"

    aput-object v1, v0, p0

    const/4 p0, 0x3

    const-string v1, "summary"

    aput-object v1, v0, p0

    .line 275
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/Map;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "billboardData"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "billboardSummary"

    aput-object v1, v0, p0

    .line 218
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static c(ZZZ)Lo/TextInputTimePickerView;
    .locals 3

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "summary"

    .line 173
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "detail"

    .line 176
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "offlineAvailable"

    aput-object v1, p0, p2

    if-eqz p1, :cond_2

    const-string p1, "previewArtV2"

    goto :goto_0

    :cond_2
    const-string p1, "previewArt"

    :goto_0
    const/4 v1, 0x1

    aput-object p1, p0, v1

    const/4 p1, 0x2

    const-string v2, "artworkColors"

    aput-object v2, p0, p1

    .line 178
    invoke-static {p0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p0, v1, [Ljava/lang/Object;

    aput-object v0, p0, p2

    .line 179
    invoke-static {p0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "summary"

    const-string v3, "detail"

    const-string v4, "timeCodes"

    const-string v5, "rating"

    const-string v6, "inQueue"

    const-string v7, "bookmark"

    const-string v8, "offlineAvailable"

    const-string v9, "defaultTrailer"

    const-string v10, "advisories"

    .line 328
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_0

    const-string p3, "tags"

    .line 331
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "billboardArt"

    .line 332
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_1

    const-string p3, "evidence"

    .line 336
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string v1, "videos"

    aput-object v1, p3, p4

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const/4 p4, 0x2

    aput-object v0, p3, p4

    .line 339
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {p1}, Lo/SEService;->a(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-static {p1}, Lo/SEService;->c(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 347
    invoke-static {p1}, Lo/SEService;->d(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {p1}, Lo/SEService;->b(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static c(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZ)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "videoEvidence"

    aput-object v3, v1, v2

    .line 254
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "bigRowData"

    aput-object v5, v3, v2

    .line 255
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "bigRowSummary"

    aput-object p2, v3, v0

    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 257
    invoke-static {p4}, Lo/SEService;->e(Z)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p2, v1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZZZ)V"
        }
    .end annotation

    .line 104
    invoke-static {p4, p5, p6}, Lo/SEService;->c(ZZZ)Lo/TextInputTimePickerView;

    move-result-object p4

    const/4 p5, 0x1

    new-array p6, p5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p6, v1

    invoke-static {p6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p6

    invoke-interface {p4, p6}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-interface {p4, p1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    const/4 p6, 0x3

    new-array p6, p6, [Ljava/lang/Object;

    const-string v0, "thirtySecondPreviewData"

    aput-object v0, p6, v1

    .line 105
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    aput-object p2, p6, p5

    const/4 p2, 0x2

    const-string p3, "supplementalSummary"

    aput-object p3, p6, p2

    invoke-static {p6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 107
    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bookmark"

    const-string v1, "offlineAvailable"

    .line 520
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    invoke-static/range {p0 .. p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 544
    invoke-static {v2}, Lo/SEService;->c(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-static/range {p0 .. p0}, Lo/SEService;->a(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "videos"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object p0, v4, v7

    const-string v8, "defaultTrailer"

    aput-object v8, v4, v1

    .line 548
    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-static/range {p0 .. p0}, Lo/SEService;->d(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-static/range {p0 .. p0}, Lo/SEService;->b(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object/from16 v8, p1

    if-ne v8, v4, :cond_1

    .line 553
    invoke-static/range {p2 .. p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    const-string v8, "watchNext"

    const-string v9, "current"

    const-string v10, "episodes"

    const-string v12, "offlineAvailable"

    const-string v13, "bookmark"

    const-string v15, "detail"

    const/4 v14, 0x4

    if-eqz v4, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v15, v11, v6

    aput-object v13, v11, v7

    aput-object v12, v11, v1

    .line 554
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v4, v1

    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    aput-object v8, v4, v1

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v15, v8, v6

    aput-object v13, v8, v7

    aput-object v12, v8, v1

    .line 555
    invoke-static {v8}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v6

    aput-object p0, v11, v7

    aput-object v10, v11, v1

    aput-object v9, v11, v3

    aput-object v8, v11, v14

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v15, v4, v6

    const-string v8, "timeCodes"

    aput-object v8, v4, v7

    aput-object v13, v4, v1

    aput-object v12, v4, v3

    .line 557
    invoke-static {v4}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v11, v8

    invoke-static {v11}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object p0, v4, v7

    const-string v8, "seasons"

    aput-object v8, v4, v1

    const-string v11, "summary"

    aput-object v11, v4, v3

    .line 560
    invoke-static {v4}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v6

    aput-object p0, v11, v7

    aput-object v8, v11, v1

    const-string v4, "latest"

    aput-object v4, v11, v3

    aput-object v15, v11, v14

    .line 564
    invoke-static {v11}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {v2}, Lo/SEService;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    aput-object p0, v2, v7

    aput-object v8, v2, v1

    aput-object v9, v2, v3

    aput-object v10, v2, v14

    const/16 v1, 0x27

    .line 574
    invoke-static {v6, v1}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    sget-object v1, Lo/SEService;->b:Ljava/util/List;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    .line 568
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "trailers"

    aput-object v1, v0, p0

    const/4 p0, 0x3

    const-string v1, "summary"

    aput-object v1, v0, p0

    .line 301
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v3, "trailers"

    aput-object v3, v0, p0

    const/16 v3, 0x18

    .line 295
    invoke-static {v3}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "summary"

    aput-object v4, v3, v1

    const-string v1, "trickplayBaseUrl"

    aput-object v1, v3, v2

    const-string v1, "detail"

    aput-object v1, v3, p0

    .line 296
    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 291
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZ)V"
        }
    .end annotation

    .line 210
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Lo/SEService;->e(Z)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-static {v0, p4}, Lo/SEService;->a(Ljava/util/Map;Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-interface {p1, p4}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p4

    sget-object v0, Lo/SEService;->j:Lo/TextInputTimePickerView;

    invoke-static {p4, v0}, Lo/SEService;->a(Ljava/util/Map;Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-interface {p1, p4}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lo/SEService;->c(Ljava/util/Map;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "hasWatched"

    .line 516
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "characters"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "gallery"

    aput-object v1, v0, p0

    const/16 p0, 0x64

    .line 317
    invoke-static {p0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x4

    const-string v1, "summary"

    aput-object v1, v0, p0

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 4

    .line 229
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    const-string p2, "lists"

    aput-object p2, p0, v2

    aput-object p1, p0, v1

    .line 230
    invoke-static {p0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p3, "lolomos"

    aput-object p3, p1, v2

    aput-object p2, p1, v1

    aput-object p0, p1, v3

    .line 232
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "topCategories"

    aput-object p2, p1, v2

    .line 234
    invoke-static {p3}, Lo/SEService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    aput-object p0, p1, v3

    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "lolomo"

    aput-object p2, p1, v2

    aput-object p0, p1, v1

    .line 236
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/TextInputTimePickerView;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "seasons"

    aput-object v1, v0, p0

    const/16 p0, 0x27

    .line 358
    invoke-static {p0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x4

    const-string v1, "detail"

    aput-object v1, v0, p0

    .line 354
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static e(Z)Lo/TextInputTimePickerView;
    .locals 5

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "summary"

    .line 186
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "detail"

    aput-object v2, p0, v1

    const/4 v2, 0x1

    const-string v3, "rating"

    aput-object v3, p0, v2

    const/4 v3, 0x2

    const-string v4, "inQueue"

    aput-object v4, p0, v3

    const/4 v3, 0x3

    const-string v4, "bookmark"

    aput-object v4, p0, v3

    const/4 v3, 0x4

    const-string v4, "offlineAvailable"

    aput-object v4, p0, v3

    .line 188
    invoke-static {p0}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object v0, p0, v1

    .line 189
    invoke-static {p0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZZZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "summary"

    const-string v4, "detail"

    const-string v5, "rating"

    const-string v6, "inQueue"

    const-string v7, "hasWatched"

    const-string v8, "defaultTrailer"

    const-string v9, "advisories"

    .line 428
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p6, :cond_0

    const-string v2, "tags"

    .line 431
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "billboardArt"

    .line 432
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p7, :cond_1

    const-string v2, "evidence"

    .line 436
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p8, :cond_2

    const-string v2, "volatileBitmaskedDetails"

    .line 440
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "videos"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object p1, v3, v6

    const/4 v7, 0x2

    aput-object v1, v3, v7

    .line 442
    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v8, "offlineAvailable"

    const-string v9, "bookmark"

    const-string v10, "detail"

    .line 445
    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p9, :cond_3

    const-string v11, "supportedMediaTracks"

    .line 447
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v11, 0x5

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v4, v12, v5

    aput-object p1, v12, v6

    const-string v13, "episodes"

    aput-object v13, v12, v7

    const-string v14, "current"

    aput-object v14, v12, v2

    aput-object v1, v12, v3

    .line 449
    invoke-static {v12}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static/range {p2 .. p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v12, 0x6

    const-string v15, "timeCodes"

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v5

    aput-object p2, v1, v6

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v5

    aput-object v15, v11, v6

    aput-object v9, v11, v7

    aput-object v8, v11, v2

    .line 452
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v1, v7

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v5

    aput-object p2, v1, v6

    const-string v11, "watchNext"

    aput-object v11, v1, v7

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v5

    aput-object v15, v11, v6

    aput-object v9, v11, v7

    aput-object v8, v11, v2

    .line 453
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-array v1, v12, [Ljava/lang/Object;

    aput-object v4, v1, v5

    aput-object p1, v1, v6

    aput-object v13, v1, v7

    aput-object v14, v1, v2

    const-string v11, "watchNext"

    aput-object v11, v1, v3

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v5

    aput-object v15, v11, v6

    aput-object v9, v11, v7

    aput-object v8, v11, v2

    .line 455
    invoke-static {v11}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v1, v9

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :goto_0
    invoke-static/range {p1 .. p1}, Lo/SEService;->a(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-static/range {p1 .. p1}, Lo/SEService;->c(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_5

    .line 463
    invoke-static/range {p1 .. p1}, Lo/SEService;->d(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static/range {p1 .. p1}, Lo/SEService;->b(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "seasons"

    if-eqz p3, :cond_6

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object p1, v8, v6

    aput-object v1, v8, v7

    const-string v9, "summary"

    aput-object v9, v8, v2

    .line 468
    invoke-static {v8}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object p1, v9, v6

    aput-object v1, v9, v7

    const-string v8, "latest"

    aput-object v8, v9, v2

    aput-object v10, v9, v3

    .line 471
    invoke-static {v9}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static/range {p1 .. p1}, Lo/SEService;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p4, :cond_7

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object p1, v8, v6

    aput-object v1, v8, v7

    aput-object v14, v8, v2

    aput-object v13, v8, v3

    const/16 v1, 0x27

    .line 477
    invoke-static {v5, v1}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v8, v2

    sget-object v1, Lo/SEService;->b:Ljava/util/List;

    aput-object v1, v8, v12

    .line 476
    invoke-static {v8}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static e(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/TextInputTimePickerView;",
            "IIZ)V"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_0

    const-string p4, "summary"

    .line 114
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p4, "topTenBoxart"

    .line 116
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p2, p3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static i(Ljava/lang/String;)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "similars"

    aput-object v1, v0, p0

    const/16 p0, 0xb

    .line 603
    invoke-static {p0}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 599
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method
