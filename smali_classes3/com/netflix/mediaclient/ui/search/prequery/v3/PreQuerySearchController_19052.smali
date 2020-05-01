.class public final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Lo/ZU;",
        ">;"
    }
.end annotation


# instance fields
.field private final appView:Lcom/netflix/cl/model/AppView;

.field private final context:Landroid/content/Context;

.field private final eventBusFac:Lo/UpdateEngine;

.field private loadedSectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final presentationTracking:Lo/Yf;

.field private final uiViewCallback:Lo/ZP$ActionBar;


# direct methods
.method public constructor <init>(Lo/ZP$ActionBar;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;Landroid/content/Context;)V
    .locals 1

    const-string v0, "uiViewCallback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->uiViewCallback:Lo/ZP$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->appView:Lcom/netflix/cl/model/AppView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->eventBusFac:Lo/UpdateEngine;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->context:Landroid/content/Context;

    .line 55
    new-instance p1, Lo/Yf;

    invoke-direct {p1}, Lo/Yf;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->presentationTracking:Lo/Yf;

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->loadedSectionMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lo/ZP$ActionBar;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;Landroid/content/Context;ILo/amc;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 50
    sget-object p2, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;-><init>(Lo/ZP$ActionBar;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getLoadedSectionMap$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->loadedSectionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getPresentationTracking$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/Yf;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->presentationTracking:Lo/Yf;

    return-object p0
.end method

.method public static final synthetic access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->uiViewCallback:Lo/ZP$ActionBar;

    return-object p0
.end method

.method public static final synthetic access$setLoadedSectionMap$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Ljava/util/Map;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->loadedSectionMap:Ljava/util/Map;

    return-void
.end method

.method private final addHeader(Lcom/netflix/model/leafs/SearchSectionSummary;)V
    .locals 4

    .line 171
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    new-instance v1, Lo/aaa;

    invoke-direct {v1}, Lo/aaa;-><init>()V

    .line 621
    move-object v2, v1

    check-cast v2, Lo/ZW;

    .line 174
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/ZW;->d(Ljava/lang/CharSequence;)Lo/ZW;

    .line 175
    invoke-interface {v2, v0}, Lo/ZW;->a(Ljava/lang/String;)Lo/ZW;

    .line 176
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getPageKind()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lo/ZW;->e(Ljava/lang/String;)Lo/ZW;

    .line 620
    invoke-virtual {v1, p0}, Lo/aaa;->a(Lo/OfPrimitive;)V

    :cond_0
    return-void
.end method

.method private final addSuggestion(Lo/ZU;Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 8

    .line 137
    invoke-virtual {p1}, Lo/ZU;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 138
    check-cast p1, Ljava/lang/Iterable;

    .line 607
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 139
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p3, v1, v0, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    .line 608
    new-instance v4, Lo/aam;

    invoke-direct {v4}, Lo/aam;-><init>()V

    .line 612
    move-object v5, v4

    check-cast v5, Lo/aao;

    .line 143
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lo/aao;->d(Ljava/lang/CharSequence;)Lo/aao;

    .line 144
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/aao;->b(Ljava/lang/String;)Lo/aao;

    const-string v6, "id"

    .line 147
    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "videoInfo.entityType"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v7, "videoInfo.title"

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v3, v6, v1, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createSearchSuggestionClickListener(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;

    move-result-object v0

    .line 145
    invoke-interface {v5, v0}, Lo/aao;->c(Lo/LongStream;)Lo/aao;

    .line 611
    invoke-virtual {v4, p0}, Lo/aam;->a(Lo/OfPrimitive;)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final addVideoCarouselModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Ljava/util/List;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ZU;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Ljava/util/List<",
            "Lo/aag;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 494
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    const/4 v10, 0x0

    if-eqz v14, :cond_d

    .line 496
    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    .line 664
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v17, v9, 0x1

    if-gez v9, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    move-object v8, v0

    check-cast v8, Lo/Bx;

    .line 497
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v8}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v0, :cond_c

    move-object/from16 v7, p2

    .line 499
    invoke-virtual {v7, v0, v9, v10}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    .line 500
    invoke-interface {v8}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-interface {v8}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Lo/Bx;->O()Ljava/lang/String;

    move-result-object v3

    .line 502
    :goto_1
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v8}, Lo/Bx;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_2
    iget-object v4, v11, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->context:Landroid/content/Context;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v4, v5}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v18

    .line 505
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_5

    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "videoId is null or empty"

    .line 506
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 507
    :cond_5
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_8

    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title is null or empty for videoId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 509
    :cond_8
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-eqz v5, :cond_b

    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boxshotUrl is null or empty for videoId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 512
    :cond_b
    new-instance v2, Lo/aag;

    invoke-direct {v2}, Lo/aag;-><init>()V

    .line 513
    invoke-virtual {v2, v4}, Lo/aag;->d(Ljava/lang/CharSequence;)Lo/aag;

    .line 514
    invoke-virtual {v2, v3}, Lo/aag;->d(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v2, v9}, Lo/aag;->d(I)V

    .line 516
    invoke-virtual {v2, v0}, Lo/aag;->a(Ljava/lang/String;)V

    .line 517
    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getPageKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/aag;->b(Ljava/lang/String;)V

    .line 518
    iget-object v0, v11, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->eventBusFac:Lo/UpdateEngine;

    invoke-virtual {v2, v0}, Lo/aag;->a(Lo/UpdateEngine;)V

    .line 519
    invoke-virtual {v2, v13}, Lo/aag;->b(I)V

    move-object/from16 v6, p3

    .line 522
    invoke-direct {v11, v6, v8, v1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createCarouselItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;

    move-result-object v0

    .line 521
    invoke-virtual {v2, v0}, Lo/aag;->d(Lo/LongStream;)Lo/aag;

    move-result-object v5

    .line 528
    new-instance v19, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;

    move-object/from16 v0, v19

    move v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    move-object v15, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move/from16 v21, v9

    move/from16 v9, p5

    const/16 v22, 0x0

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;ILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/util/List;Lcom/netflix/model/leafs/SearchSectionSummary;ILjava/util/List;)V

    move-object/from16 v0, v19

    check-cast v0, Lo/EncryptedPrivateKeyInfo;

    invoke-virtual {v15, v0}, Lo/aag;->b(Lo/EncryptedPrivateKeyInfo;)Lo/aag;

    move-result-object v15

    .line 538
    new-instance v19, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;-><init>(IILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/util/List;Lcom/netflix/model/leafs/SearchSectionSummary;ILjava/util/List;)V

    move-object/from16 v0, v19

    check-cast v0, Lo/AEADBadTagException;

    invoke-virtual {v15, v0}, Lo/aag;->c(Lo/AEADBadTagException;)Lo/aag;

    move-result-object v0

    const-string v1, "PreQuerySearchCarouselMo\u2026                        }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    :goto_9
    const/16 v22, 0x0

    :goto_a
    move/from16 v9, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v22, 0x0

    .line 556
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 557
    sget-object v1, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v1}, Lo/fl$ActionBar;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getPageKind()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuerySearch"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-ne v13, v0, :cond_f

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_b
    if-gt v1, v0, :cond_f

    .line 563
    new-instance v2, Lo/aag;

    invoke-direct {v2}, Lo/aag;-><init>()V

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/aag;->d(Ljava/lang/CharSequence;)Lo/aag;

    const/4 v3, 0x1

    .line 565
    invoke-virtual {v2, v3}, Lo/aag;->d(Z)V

    .line 566
    invoke-virtual {v2, v13}, Lo/aag;->b(I)V

    .line 567
    iget-object v4, v11, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->eventBusFac:Lo/UpdateEngine;

    invoke-virtual {v2, v4}, Lo/aag;->a(Lo/UpdateEngine;)V

    if-nez v1, :cond_e

    const/4 v4, 0x1

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    .line 568
    :goto_c
    invoke-virtual {v2, v4}, Lo/aag;->a(Z)V

    .line 569
    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getPageKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/aag;->b(Ljava/lang/String;)V

    .line 562
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    return-void
.end method

.method private final addVideoGalleryModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    .line 404
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_10

    .line 406
    check-cast v0, Ljava/lang/Iterable;

    .line 645
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v15, v5, 0x1

    if-gez v5, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    move-object v6, v0

    check-cast v6, Lo/Bx;

    .line 407
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    move-object/from16 v10, p2

    .line 409
    invoke-virtual {v10, v0, v5, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    .line 411
    invoke-interface {v6}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-interface {v6}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Lo/Bx;->O()Ljava/lang/String;

    move-result-object v3

    .line 413
    :goto_1
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Lo/Bx;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 414
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_5

    .line 415
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "videoId is null or empty"

    .line 416
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 417
    :cond_5
    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v8, 0x1

    :goto_6
    if-eqz v8, :cond_8

    .line 418
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title is null or empty for videoId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 420
    :cond_8
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 421
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boxshortUrl is null or empty for videoId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 424
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->e()Z

    move-result v1

    if-nez v1, :cond_d

    .line 428
    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result v1

    if-ge v5, v1, :cond_e

    .line 646
    :cond_c
    new-instance v9, Lo/aaj;

    invoke-direct {v9}, Lo/aaj;-><init>()V

    .line 650
    move-object v8, v9

    check-cast v8, Lo/aai;

    .line 432
    invoke-interface {v8, v0}, Lo/aai;->b(Ljava/lang/CharSequence;)Lo/aai;

    .line 433
    invoke-interface {v8, v2}, Lo/aai;->c(Ljava/lang/String;)Lo/aai;

    .line 434
    invoke-interface {v8, v3}, Lo/aai;->e(Ljava/lang/String;)Lo/aai;

    .line 435
    invoke-interface {v8, v5}, Lo/aai;->b(I)Lo/aai;

    .line 436
    invoke-interface {v8, v7}, Lo/aai;->d(Ljava/lang/String;)Lo/aai;

    .line 438
    invoke-direct {v11, v12, v6, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createGridItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;

    move-result-object v0

    .line 437
    invoke-interface {v8, v0}, Lo/aai;->a(Lo/LongStream;)Lo/aai;

    .line 444
    new-instance v16, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Activity;

    move-object/from16 v0, v16

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move-object/from16 v7, p0

    move-object v14, v8

    move-object/from16 v8, p1

    move-object/from16 v17, v13

    move-object v13, v9

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;ILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/EncryptedPrivateKeyInfo;

    invoke-interface {v14, v0}, Lo/aai;->c(Lo/EncryptedPrivateKeyInfo;)Lo/aai;

    .line 649
    invoke-virtual {v13, v11}, Lo/aaj;->a(Lo/OfPrimitive;)V

    goto :goto_9

    :cond_d
    move-object/from16 v17, v13

    .line 455
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xc

    if-ge v5, v1, :cond_f

    .line 654
    new-instance v13, Lo/aaj;

    invoke-direct {v13}, Lo/aaj;-><init>()V

    .line 658
    move-object v14, v13

    check-cast v14, Lo/aai;

    .line 458
    invoke-interface {v14, v0}, Lo/aai;->b(Ljava/lang/CharSequence;)Lo/aai;

    .line 459
    invoke-interface {v14, v2}, Lo/aai;->c(Ljava/lang/String;)Lo/aai;

    .line 460
    invoke-interface {v14, v3}, Lo/aai;->e(Ljava/lang/String;)Lo/aai;

    .line 461
    invoke-interface {v14, v5}, Lo/aai;->b(I)Lo/aai;

    .line 462
    invoke-interface {v14, v7}, Lo/aai;->d(Ljava/lang/String;)Lo/aai;

    .line 464
    invoke-direct {v11, v12, v6, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createGridItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;

    move-result-object v0

    .line 463
    invoke-interface {v14, v0}, Lo/aai;->a(Lo/LongStream;)Lo/aai;

    .line 470
    new-instance v16, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;

    move-object/from16 v0, v16

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;ILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/EncryptedPrivateKeyInfo;

    invoke-interface {v14, v0}, Lo/aai;->c(Lo/EncryptedPrivateKeyInfo;)Lo/aai;

    .line 657
    invoke-virtual {v13, v11}, Lo/aaj;->a(Lo/OfPrimitive;)V

    goto :goto_9

    :cond_e
    :goto_8
    move-object/from16 v17, v13

    :cond_f
    :goto_9
    move v5, v15

    move-object/from16 v13, v17

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private final addVideoListModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 325
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_e

    .line 327
    check-cast v2, Ljava/lang/Iterable;

    .line 626
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v5, Lo/Bx;

    .line 329
    invoke-virtual/range {p1 .. p1}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v5}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v7, :cond_d

    const/4 v8, 0x1

    move-object/from16 v9, p2

    .line 331
    invoke-virtual {v9, v7, v4, v8}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v10

    .line 332
    invoke-interface {v5}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video.id"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-interface {v5}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lo/Bx;->O()Ljava/lang/String;

    move-result-object v12

    .line 334
    :goto_1
    invoke-interface {v7}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getPreQueryImgUrl()Ljava/lang/String;

    move-result-object v13

    .line 335
    move-object v14, v11

    check-cast v14, Ljava/lang/CharSequence;

    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v15, 0x1

    :goto_3
    if-eqz v15, :cond_4

    .line 336
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    const-string v5, "videoId is null or empty"

    .line 337
    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 338
    :cond_4
    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v15, 0x1

    :goto_5
    if-eqz v15, :cond_7

    .line 339
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title is null or empty for videoId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 341
    :cond_7
    move-object v15, v13

    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :cond_9
    :goto_6
    if-eqz v8, :cond_a

    .line 342
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preQueryImg is null or empty for videoId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 345
    :cond_a
    sget-object v8, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v8}, Lo/eM$Application;->a()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 627
    new-instance v7, Lo/ZX;

    invoke-direct {v7}, Lo/ZX;-><init>()V

    .line 631
    move-object v8, v7

    check-cast v8, Lo/ZZ;

    .line 347
    invoke-interface {v8, v14}, Lo/ZZ;->b(Ljava/lang/CharSequence;)Lo/ZZ;

    .line 348
    invoke-interface {v8, v12}, Lo/ZZ;->b(Ljava/lang/String;)Lo/ZZ;

    .line 349
    invoke-interface {v8, v13}, Lo/ZZ;->e(Ljava/lang/String;)Lo/ZZ;

    .line 350
    invoke-interface {v8, v11}, Lo/ZZ;->a(Ljava/lang/String;)Lo/ZZ;

    .line 351
    invoke-interface {v8, v10}, Lo/ZZ;->d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/ZZ;

    .line 353
    invoke-direct {v0, v1, v10, v5, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createListItemClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;

    move-result-object v11

    .line 352
    invoke-interface {v8, v11}, Lo/ZZ;->a(Lo/LongStream;)Lo/ZZ;

    .line 361
    invoke-direct {v0, v1, v10, v5, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createPlayVideoClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;

    move-result-object v4

    .line 360
    invoke-interface {v8, v4}, Lo/ZZ;->d(Lo/LongStream;)Lo/ZZ;

    .line 630
    invoke-virtual {v7, v0}, Lo/ZX;->a(Lo/OfPrimitive;)V

    goto :goto_8

    .line 635
    :cond_b
    new-instance v8, Lo/aah;

    invoke-direct {v8}, Lo/aah;-><init>()V

    .line 639
    move-object v11, v8

    check-cast v11, Lo/aak;

    .line 371
    invoke-interface {v5}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v11, v12}, Lo/aak;->d(Ljava/lang/CharSequence;)Lo/aak;

    .line 372
    invoke-interface {v5}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v5}, Lo/Bx;->O()Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-interface {v11, v12}, Lo/aak;->a(Ljava/lang/String;)Lo/aak;

    .line 373
    invoke-interface {v7}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getPreQueryImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lo/aak;->c(Ljava/lang/String;)Lo/aak;

    .line 374
    invoke-interface {v5}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lo/aak;->b(Ljava/lang/String;)Lo/aak;

    .line 375
    invoke-interface {v11, v10}, Lo/aak;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/aak;

    .line 377
    invoke-direct {v0, v1, v10, v5, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createListItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;

    move-result-object v7

    .line 376
    invoke-interface {v11, v7}, Lo/aak;->b(Lo/LongStream;)Lo/aak;

    .line 385
    invoke-direct {v0, v1, v10, v5, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createPlayVideoClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;

    move-result-object v4

    .line 384
    invoke-interface {v11, v4}, Lo/aak;->a(Lo/LongStream;)Lo/aak;

    .line 638
    invoke-virtual {v8, v0}, Lo/aah;->a(Lo/OfPrimitive;)V

    goto :goto_8

    :cond_d
    move-object/from16 v9, p2

    :goto_8
    move v4, v6

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private final createCarouselItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lo/Bx;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            ")",
            "Lo/LongStream<",
            "Lo/aag;",
            "Lo/aac$Activity;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;)V

    check-cast v0, Lo/LongStream;

    return-object v0
.end method

.method private final createGridItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lo/Bx;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            ")",
            "Lo/LongStream<",
            "Lo/aaj;",
            "Lo/aad$ActionBar;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$FragmentManager;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;)V

    check-cast v0, Lo/LongStream;

    return-object v0
.end method

.method private final createListItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            "Lo/Bx;",
            "I)",
            "Lo/LongStream<",
            "Lo/aah;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v6, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Dialog;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Dialog;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;)V

    check-cast v6, Lo/LongStream;

    return-object v6
.end method

.method private final createListItemClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            "Lo/Bx;",
            "I)",
            "Lo/LongStream<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v6, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;)V

    check-cast v6, Lo/LongStream;

    return-object v6
.end method

.method private final createPlayVideoClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            "Lo/Bx;",
            "I)",
            "Lo/LongStream<",
            "Lo/aah;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v6, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$AssistContent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$AssistContent;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v6, Lo/LongStream;

    return-object v6
.end method

.method private final createPlayVideoClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            "Lo/Bx;",
            "I)",
            "Lo/LongStream<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v6, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v6, Lo/LongStream;

    return-object v6
.end method

.method private final createSearchSuggestionClickListener(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            ")",
            "Lo/LongStream<",
            "Lo/aam;",
            "Lo/aan$ActionBar;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v6, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast v6, Lo/LongStream;

    return-object v6
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lo/ZU;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->buildModels(Lo/ZU;)V

    return-void
.end method

.method protected buildModels(Lo/ZU;)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 580
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v8, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    move-object v9, v2

    check-cast v9, Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    .line 65
    new-instance v2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->appView:Lcom/netflix/cl/model/AppView;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 66
    invoke-virtual {v2, v9, v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchSectionSummary;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    .line 69
    sget-object v2, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lo/eM$Application;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v7, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->appView:Lcom/netflix/cl/model/AppView;

    sget-object v3, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    if-eq v2, v3, :cond_2

    .line 72
    :cond_1
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addHeader(Lcom/netflix/model/leafs/SearchSectionSummary;)V

    .line 75
    :cond_2
    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoList"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-direct {p0, p1, v4, v9}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addVideoListModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V

    goto/16 :goto_1

    .line 78
    :cond_3
    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoGallery"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-direct {p0, p1, v4, v9}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addVideoGalleryModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V

    .line 80
    invoke-virtual {p1}, Lo/ZU;->e()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSuggestedNumOfVideos()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_6

    .line 581
    new-instance v2, Lo/aav;

    invoke-direct {v2}, Lo/aav;-><init>()V

    .line 585
    move-object v3, v2

    check-cast v3, Lo/aaq;

    const-string v4, "see more"

    .line 82
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/aaq;->e(Ljava/lang/CharSequence;)Lo/aaq;

    .line 83
    new-instance v4, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;

    invoke-direct {v4, p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-interface {v3, v4}, Lo/aaq;->d(Landroid/view/View$OnClickListener;)Lo/aaq;

    .line 584
    invoke-virtual {v2, p0}, Lo/aav;->a(Lo/OfPrimitive;)V

    goto :goto_1

    .line 93
    :cond_4
    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCarousel"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p0

    move-object v3, p1

    move-object v5, v9

    move-object v6, v10

    .line 94
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addVideoCarouselModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Ljava/util/List;I)V

    .line 589
    new-instance v2, Lo/SectionIndexer;

    invoke-direct {v2}, Lo/SectionIndexer;-><init>()V

    .line 593
    move-object v3, v2

    check-cast v3, Lo/SearchView;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carousel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/SearchView;->d(Ljava/lang/CharSequence;)Lo/SearchView;

    const/16 v4, 0x8

    .line 97
    invoke-interface {v3, v4}, Lo/SearchView;->e(I)Lo/SearchView;

    .line 98
    invoke-interface {v3, v10}, Lo/SearchView;->a(Ljava/util/List;)Lo/SearchView;

    move-result-object v3

    .line 99
    new-instance v4, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment;

    invoke-direct {v4, v9, v10, p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment;-><init>(Lcom/netflix/model/leafs/SearchSectionSummary;Ljava/util/List;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;)V

    check-cast v4, Lo/AEADBadTagException;

    invoke-interface {v3, v4}, Lo/SearchView;->c(Lo/AEADBadTagException;)Lo/SearchView;

    .line 592
    invoke-virtual {v2, p0}, Lo/SectionIndexer;->a(Lo/OfPrimitive;)V

    goto :goto_1

    .line 111
    :cond_5
    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchSectionSummary;->getListType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EntityNameList"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    invoke-direct {p0, p1, v9, v4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addSuggestion(Lo/ZU;Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_6
    :goto_1
    move v7, v8

    goto/16 :goto_0

    .line 119
    :cond_7
    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getTotalSections()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 598
    new-instance p1, Lo/aae;

    invoke-direct {p1}, Lo/aae;-><init>()V

    .line 602
    move-object v0, p1

    check-cast v0, Lo/aaf;

    const-string v1, "loading"

    .line 124
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lo/aaf;->b(Ljava/lang/CharSequence;)Lo/aaf;

    .line 125
    new-instance v1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)V

    check-cast v1, Lo/AEADBadTagException;

    invoke-interface {v0, v1}, Lo/aaf;->e(Lo/AEADBadTagException;)Lo/aaf;

    .line 601
    invoke-virtual {p1, p0}, Lo/aae;->a(Lo/OfPrimitive;)V

    :cond_8
    return-void
.end method

.method public final resetLoadedSectionMap()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->loadedSectionMap:Ljava/util/Map;

    return-void
.end method
