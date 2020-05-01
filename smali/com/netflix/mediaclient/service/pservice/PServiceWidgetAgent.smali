.class public Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;
.super Lcom/netflix/mediaclient/service/pservice/PServiceAgent;
.source "PServiceWidgetAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;


# static fields
.field private static final ASPECT_RATIO_16_9:F = 1.78f

.field private static final ASPECT_RATIO_LIMIT_FOR_CROPPING:F = 4.8f

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "FROM_PREAPP_WIDGET"

.field public static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final LOGO_HEADER_HEIGHT_DP:I = 0x28

.field private static final MAX_IMAGES_IN_VIEW:I = 0x3

.field public static final NFLX_WIDGET:Ljava/lang/String; = "NetflixWidget"

.field private static final PREAPP_NFLX_BASE:Ljava/lang/String; = "nflx://www.netflix.com/Browse?q=source%3DNetflixWidget%26trkid%3D14836231%26action%3D"

.field private static final PREAPP_NFLX_EPISODE_URL:Ljava/lang/String; = "%26episodeid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fprograms%2F"

.field private static final PREAPP_NFLX_MOVIE_URL:Ljava/lang/String; = "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

.field private static final PREAPP_NFLX_SHOW_URL:Ljava/lang/String; = "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fseries%2F"

.field private static final PREAPP_TRACKID:Ljava/lang/String; = "14836231"

.field private static final PREAP_TRACKID_PARAM:Ljava/lang/String; = "%26trkid%3D14836231"

.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetagent"

.field private static final TV_CARD_SCALE_UP:I = 0x3

.field private static mIsNflxServicePlayerInPauseState:Z

.field private static mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field private static mNflxServicePlayableId:Ljava/lang/String;

.field private static mVideoIdOnWidget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getBitmapFromDisk(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;I)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    return-void
.end method

.method private adjustLogoAndRefreshIcon(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f0f02d8

    .line 424
    const v0, 0x7f0f02d9

    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 425
    const v0, 0x7f0300de

    if-ne v0, p7, :cond_1

    .line 426
    const v0, 0x7f0f02da

    invoke-direct {p0, p4, p5, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 427
    const/16 v0, 0x8

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getGradientResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 444
    :cond_0
    :goto_0
    return-object p2

    .line 431
    :cond_1
    invoke-direct {p0, p4, p5, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 433
    invoke-direct {p0, p1, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->canFitListName(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-interface {p9, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    div-int/2addr v0, p3

    .line 436
    if-lez v0, :cond_2

    .line 437
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPreAppAdString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 436
    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {p2, v3, p8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private adjustViews(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 7

    .prologue
    const v6, 0x7f0f02dc

    const/4 v1, 0x1

    const v5, 0x7f0f02dd

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 262
    const v2, 0x7f0f02d5

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    const v2, 0x7f0f02df

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    const v2, 0x7f0f02d9

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 269
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v2

    .line 270
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v3

    .line 271
    if-gt v3, v2, :cond_0

    move v0, v1

    .line 273
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-gt v3, v0, :cond_1

    .line 274
    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 276
    :cond_1
    if-gt v2, v1, :cond_2

    .line 277
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    :cond_2
    return-void
.end method

.method private buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 589
    const-string/jumbo v0, "home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    const-string/jumbo v1, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fseries%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    const-string/jumbo v1, "%26episodeid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fprograms%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    const-string/jumbo v1, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private buildRemoteViews(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;II",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p7

    invoke-direct {v6, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->setViewsToDefault(Landroid/widget/RemoteViews;)V

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v19

    .line 377
    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNumberOfImages(Landroid/content/Context;II)I

    move-result v13

    .line 380
    const/4 v4, 0x3

    if-ge v13, v4, :cond_0

    .line 381
    add-int/lit8 v4, v13, 0x1

    :goto_0
    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    .line 382
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v7, "setting %d to gone"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageGroupResourceId(I)I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    :cond_0
    const/4 v10, 0x1

    move-object/from16 v9, p3

    move-object/from16 v7, p2

    :goto_1
    if-gt v10, v13, :cond_4

    .line 388
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "for widgetId:%d, image:%d, (%s), %s:%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const/4 v11, 0x3

    iget-object v12, v7, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x4

    iget-object v12, v7, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v12, v8, v11

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageGroupResourceId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p6

    move/from16 v11, p7

    .line 391
    invoke-direct/range {v4 .. v11}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->fillInRemoteView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/netflix/mediaclient/service/pservice/PVideo;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 393
    if-ne v10, v13, :cond_1

    :goto_2
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v14, v7

    move-object v15, v9

    move/from16 v16, p6

    move/from16 v17, p7

    .line 416
    invoke-direct/range {v10 .. v19}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->adjustLogoAndRefreshIcon(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 418
    return-object v4

    .line 397
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p8

    invoke-direct {v0, v9, v1, v7, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->listHasNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v7, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextVideoInList(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 406
    :goto_3
    add-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v9, v1, v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v5

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1, v4, v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 409
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v6, v12

    move-object v7, v4

    goto/16 :goto_1

    .line 400
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v9, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v9

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v9, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v19

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 403
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d)list at end, next video (%s) %s:%s "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v8, 0x3

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 412
    :cond_3
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d)bitmap null for video:%s in list %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v8, 0x2

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object v12, v6

    goto/16 :goto_2
.end method

.method private buildWidgetStaticImageRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0f02dc

    const v5, 0x7f0f02d4

    const/4 v4, 0x0

    .line 344
    const v0, 0x7f0300df

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByHeight(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    const v0, 0x7f0300de

    .line 350
    :cond_1
    const-string/jumbo v1, "nf_preapp_widgetagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buildWidgetStaticImageRemoteView layoutId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 353
    invoke-direct {p0, p1, v1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->adjustViews(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 355
    const v0, 0x7f0201ca

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 357
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 358
    const v0, 0x7f0f02dd

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 360
    const v0, 0x7f080296

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 362
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 363
    const v0, 0x7f0f02d8

    invoke-direct {p0, v7, v7, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 364
    const v0, 0x7f0f02d9

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 366
    return-object v1
.end method

.method private canFitListName(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cellFromDp(I)I
    .locals 1

    .prologue
    .line 1145
    add-int/lit8 v0, p0, 0x1e

    div-int/lit8 v0, v0, 0x46

    return v0
.end method

.method private createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "widgetId"

    .line 527
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string/jumbo v0, "videoId"

    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    const-string/jumbo v0, "listType"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmapsAndUpdate(ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v8, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v8}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/util/List;ILjava/util/List;Landroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    invoke-virtual {v8, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1067
    return-void
.end method

.method private doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v3

    .line 1100
    if-eqz v3, :cond_0

    invoke-direct {p0, v3, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v0

    add-int v4, p3, p4

    if-lt v0, v4, :cond_0

    move v0, v1

    .line 1101
    :goto_0
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "list:%s, size:%d, upperBound:%d, position:%d, need:%d, hasEnough:%b"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 1102
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1101
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return v0

    :cond_0
    move v0, v2

    .line 1100
    goto :goto_0
.end method

.method private fillInRemoteView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/netflix/mediaclient/service/pservice/PVideo;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageResourceId(I)I

    move-result v2

    .line 450
    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetDetailsIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 452
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableRuntime:I

    if-lez v0, :cond_2

    iget v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->plyableBookmarkPos:I

    mul-int/lit8 v0, v0, 0x64

    iget v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableRuntime:I

    div-int/2addr v0, v3

    .line 457
    :goto_0
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getProgressResourceId(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 458
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-direct {p0, p3, p5, p7, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoTitleResourceId(I)I

    move-result v0

    invoke-direct {p0, p1, p5, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoTitle(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 462
    :cond_0
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getGradientResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 463
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPlayResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 464
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getProgressGroupResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 466
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPlayResourceId(I)I

    move-result v0

    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 467
    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 469
    :cond_1
    return-object p2

    :cond_2
    move v0, v1

    .line 454
    goto :goto_0
.end method

.method private getAppWidgetIds(Landroid/content/Context;)[I
    .locals 4

    .prologue
    .line 1002
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1003
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1004
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 807
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    :goto_0
    return-object v0

    .line 811
    :cond_0
    const-string/jumbo v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    const-string/jumbo v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 815
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 817
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "%s does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getBitmapFromDisk(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 145
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    if-nez v0, :cond_1

    .line 147
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "bitmap does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 151
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap decode took (%s) %d ms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 155
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getResizedBitmapForTrickplay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 158
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap resize (CW) took %d ms"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 163
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getResizedBitmapForTvCard(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 166
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap resize (tvCard) took %d ms"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;)",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;"
        }
    .end annotation

    .prologue
    .line 742
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 745
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGradientResourceId(I)I
    .locals 1

    .prologue
    .line 1195
    packed-switch p1, :pswitch_data_0

    .line 1203
    const v0, 0x7f0f02d7

    .line 1206
    :goto_0
    return v0

    .line 1197
    :pswitch_0
    const v0, 0x7f0f02e3

    .line 1198
    goto :goto_0

    .line 1200
    :pswitch_1
    const v0, 0x7f0f02ea

    .line 1201
    goto :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageGroupResourceId(I)I
    .locals 1

    .prologue
    .line 1150
    packed-switch p1, :pswitch_data_0

    .line 1158
    const v0, 0x7f0f02ee

    .line 1161
    :goto_0
    return v0

    .line 1152
    :pswitch_0
    const v0, 0x7f0f02e0

    .line 1153
    goto :goto_0

    .line 1155
    :pswitch_1
    const v0, 0x7f0f02e7

    .line 1156
    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageResourceId(I)I
    .locals 1

    .prologue
    .line 1165
    packed-switch p1, :pswitch_data_0

    .line 1173
    const v0, 0x7f0f02d4

    .line 1176
    :goto_0
    return v0

    .line 1167
    :pswitch_0
    const v0, 0x7f0f02e1

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_1
    const v0, 0x7f0f02e8

    .line 1171
    goto :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 249
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getImageType - getResizedBitmapForTrickplay%d, listType:%s, videoPos:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const v0, 0x7f0300e0

    if-ne v0, p3, :cond_0

    if-le p4, v5, :cond_0

    .line 251
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 256
    :goto_0
    return-object v0

    .line 253
    :cond_0
    const v0, 0x7f0300de

    if-ne v0, p3, :cond_1

    .line 254
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0

    .line 256
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isPlayable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0
.end method

.method public static getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ImageType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->horzDispUrl:Ljava/lang/String;

    .line 245
    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->storyImgDispUrl:Ljava/lang/String;

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->tvCardUrl:Ljava/lang/String;

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->trickplayUrl:Ljava/lang/String;

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "pVideo is not valid, ignore newRemoteView"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 139
    :cond_1
    :goto_0
    return-object v0

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "resource not on disk, ignore widget update"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 137
    goto :goto_0
.end method

.method private getLayoutId(Landroid/content/Context;I)I
    .locals 10

    .prologue
    const v0, 0x7f0300e0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v1, 0x7f0300de

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "using preapp_widget_align_height %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return v1

    .line 311
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByWidth(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "using preapp_widget_vertical %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 313
    goto :goto_0

    .line 316
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v2

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByHeight(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 319
    :goto_1
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "using %d, preapp_widget_align_height=%d, preapp_width:%d, (widthInCell:%d) preapp_width_2cell:%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    const v1, 0x7f0300e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const v2, 0x7f0300e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 320
    goto :goto_0

    .line 317
    :cond_2
    if-le v2, v9, :cond_3

    const v0, 0x7f0300e1

    goto :goto_1

    :cond_3
    const v0, 0x7f0300e2

    goto :goto_1
.end method

.method private getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 718
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 719
    :cond_0
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "diskData is null - ignoring request"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    return-object v0

    .line 723
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ListType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 725
    :pswitch_0
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    goto :goto_0

    .line 727
    :pswitch_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    goto :goto_0

    .line 729
    :pswitch_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    goto :goto_0

    .line 731
    :pswitch_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    goto :goto_0

    .line 733
    :pswitch_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    goto :goto_0

    .line 735
    :pswitch_5
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 612
    if-nez p2, :cond_0

    .line 613
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 633
    :goto_0
    return-object v0

    .line 616
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 617
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 618
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 623
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 624
    :cond_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 625
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 627
    :cond_4
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CW_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 628
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 629
    :cond_5
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.IQ_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 633
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0
.end method

.method private getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->getVideoCountOfListForWidgetExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1107
    .line 1108
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v4

    .line 1110
    array-length v5, v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    .line 1111
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getLayoutId(Landroid/content/Context;I)I

    move-result v6

    .line 1112
    invoke-direct {p0, p1, v6, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNumberOfImages(Landroid/content/Context;II)I

    move-result v0

    .line 1113
    if-le v0, v1, :cond_0

    .line 1110
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1113
    goto :goto_1

    .line 1115
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "maxNumOfImages among all widgets %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return v1
.end method

.method private getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0
.end method

.method private getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ListType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 714
    :cond_0
    :goto_0
    return-object p1

    .line 639
    :pswitch_0
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 640
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 643
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 646
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 648
    :cond_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 654
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 656
    :cond_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 657
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 659
    :cond_5
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 660
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 662
    :cond_6
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 663
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 668
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 670
    :cond_7
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 671
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 673
    :cond_8
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 674
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 676
    :cond_9
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 677
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 681
    :pswitch_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 682
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 684
    :cond_a
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 685
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 687
    :cond_b
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 688
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 690
    :cond_c
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 691
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 695
    :pswitch_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 696
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 698
    :cond_d
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 699
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 701
    :cond_e
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 702
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 704
    :cond_f
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 705
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 709
    :pswitch_5
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1070
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v1

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 1073
    :cond_0
    invoke-direct {p0, v0, p2, v6, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    :goto_0
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "using nextList:%s, currentList:%s, need:%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-object v0

    .line 1076
    :cond_1
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "skip list:%s, currentList:%s, need:%d"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 1078
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 749
    if-nez p3, :cond_0

    .line 750
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "diskData is null - ignoring request"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    return-object v0

    .line 754
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v1

    .line 755
    if-eqz v1, :cond_1

    if-nez p2, :cond_3

    .line 756
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "(getNextVideo) listType: %s or currentVideo %s is null getting first video"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p2, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 758
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "list:%s, not enough - going to next"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 762
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_3
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 767
    invoke-direct {p0, v1, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v3

    .line 768
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_4

    .line 769
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    goto :goto_0

    .line 771
    :cond_4
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "next null - videoId: %s, is last in listType: %s, index: %d, size: %d, upperBound:%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    const/4 v2, 0x3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getNextVideoInList(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;"
        }
    .end annotation

    .prologue
    .line 785
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 786
    add-int/lit8 v0, v0, 0x1

    .line 787
    if-lez v0, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 788
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 792
    :goto_0
    return-object v0

    .line 790
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getNextVideoInList is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nflx://www.netflix.com/Browse?q=source%3DNetflixWidget%26trkid%3D14836231%26action%3D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberOfImages(Landroid/content/Context;II)I
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1255
    const v3, 0x7f0300de

    if-eq v3, p2, :cond_0

    const v3, 0x7f0300e2

    if-ne v3, p2, :cond_2

    :cond_0
    move v0, v1

    .line 1282
    :cond_1
    :goto_0
    return v0

    .line 1259
    :cond_2
    const v3, 0x7f0300e0

    if-eq v3, p2, :cond_1

    .line 1263
    const v3, 0x7f0300e1

    if-ne v3, p2, :cond_5

    .line 1264
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v3

    .line 1265
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    .line 1266
    int-to-float v5, v3

    div-float v5, v4, v5

    .line 1267
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "w-h(%f-%d) %f "

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    float-to-double v6, v5

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 1270
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "1 image only"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1271
    goto :goto_0

    .line 1273
    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    .line 1274
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "2 image only"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1275
    goto :goto_0

    .line 1278
    :cond_4
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "3 images"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1282
    goto :goto_0
.end method

.method private getPlayResourceId(I)I
    .locals 1

    .prologue
    .line 1180
    packed-switch p1, :pswitch_data_0

    .line 1188
    const v0, 0x7f0f02d5

    .line 1191
    :goto_0
    return v0

    .line 1182
    :pswitch_0
    const v0, 0x7f0f02e2

    .line 1183
    goto :goto_0

    .line 1185
    :pswitch_1
    const v0, 0x7f0f02e9

    .line 1186
    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPreAppAdString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 325
    rem-int/lit8 v0, p2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 334
    const v0, 0x7f080296

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "ad (%d) %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-object v0

    .line 327
    :pswitch_0
    const v0, 0x7f080294

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_1
    const v0, 0x7f080295

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getProgressGroupResourceId(I)I
    .locals 1

    .prologue
    .line 1240
    packed-switch p1, :pswitch_data_0

    .line 1248
    const v0, 0x7f0f02de

    .line 1251
    :goto_0
    return v0

    .line 1242
    :pswitch_0
    const v0, 0x7f0f02e4

    .line 1243
    goto :goto_0

    .line 1245
    :pswitch_1
    const v0, 0x7f0f02eb

    .line 1246
    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getProgressResourceId(I)I
    .locals 1

    .prologue
    .line 1225
    packed-switch p1, :pswitch_data_0

    .line 1233
    const v0, 0x7f0f02df

    .line 1236
    :goto_0
    return v0

    .line 1227
    :pswitch_0
    const v0, 0x7f0f02e6

    .line 1228
    goto :goto_0

    .line 1230
    :pswitch_1
    const v0, 0x7f0f02ed

    .line 1231
    goto :goto_0

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResizedBitmapForTrickplay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const v10, 0x3fe3d70a    # 1.78f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 176
    div-int v0, v3, v4

    int-to-float v5, v0

    .line 177
    cmpl-float v0, v5, v10

    if-lez v0, :cond_1

    move v0, v1

    .line 179
    :goto_0
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay -  w-h: %d-%d, aspectRatio:%f(%f), cropWidth:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_3

    .line 182
    int-to-float v0, v4

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 183
    sub-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    .line 185
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectWidth:%d, x:%d, shouldCropWidth:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x4

    add-int v10, v5, v0

    if-ge v10, v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int v1, v5, v0

    if-ge v1, v3, :cond_0

    .line 189
    invoke-static {p1, v5, v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 207
    :cond_0
    :goto_2
    return-object p1

    :cond_1
    move v0, v2

    .line 177
    goto :goto_0

    :cond_2
    move v1, v2

    .line 185
    goto :goto_1

    .line 196
    :cond_3
    int-to-float v0, v3

    div-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 197
    sub-int v5, v4, v0

    div-int/lit8 v5, v5, 0x2

    .line 199
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectHeight:%d, y:%d, shouldCropHeight:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x4

    add-int v10, v5, v0

    if-ge v10, v4, :cond_4

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int v1, v5, v0

    if-ge v1, v4, :cond_0

    .line 203
    invoke-static {p1, v2, v5, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 205
    goto :goto_2

    :cond_4
    move v1, v2

    .line 199
    goto :goto_3
.end method

.method private getResizedBitmapForTvCard(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v0, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 217
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 219
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    return-object v0
.end method

.method private getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 931
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 932
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 934
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "getVideoShownInWidget - listType / videoId  null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 952
    :goto_0
    return-object v0

    .line 938
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "videoId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "extra_video_id is null; using stored %s-%s"

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto :goto_0

    .line 943
    :cond_2
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v3, "getVideoShownInWidget %s-%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_4

    .line 946
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 947
    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 952
    goto :goto_0
.end method

.method private getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 3

    .prologue
    .line 956
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    .line 957
    if-eqz v0, :cond_1

    .line 958
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 959
    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVideoTitle(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v1, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const v0, 0x7f0801e1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableSeasonNumAbbrLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableEpisodeNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoTitleResourceId(I)I
    .locals 1

    .prologue
    .line 1210
    packed-switch p1, :pswitch_data_0

    .line 1218
    const v0, 0x7f0f02dc

    .line 1221
    :goto_0
    return v0

    .line 1212
    :pswitch_0
    const v0, 0x7f0f02e5

    .line 1213
    goto :goto_0

    .line 1215
    :pswitch_1
    const v0, 0x7f0f02ec

    .line 1216
    goto :goto_0

    .line 1210
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWidgetDetailsIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 491
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    .line 492
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 493
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    .line 495
    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 496
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    .line 499
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetHeight(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1127
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1129
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appWidgetMinHeight"

    .line 1130
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1129
    :goto_0
    return v0

    .line 1130
    :cond_0
    const-string/jumbo v1, "appWidgetMaxHeight"

    .line 1131
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getWidgetHomeIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0, v0, v2, v2, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetId(Landroid/content/Intent;)I
    .locals 3

    .prologue
    .line 923
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 924
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "widgetId"

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 927
    :cond_0
    return v0
.end method

.method private getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 503
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

    .line 504
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 505
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

    .line 507
    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 508
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

    .line 510
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetWidth(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1137
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1139
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appWidgetMaxWidth"

    .line 1140
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1139
    :goto_0
    return v0

    .line 1140
    :cond_0
    const-string/jumbo v1, "appWidgetMinWidth"

    .line 1141
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private hasAtleastOneToShow(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    return v0
.end method

.method private hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 2

    .prologue
    .line 1083
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    return v0
.end method

.method private hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 1

    .prologue
    .line 1087
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasAtleastOneToShow(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    const/4 v0, 0x1

    .line 1091
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    goto :goto_0
.end method

.method private isWidgetOneCellHigh(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1120
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v1

    .line 1121
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchNetflixHome(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 541
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "launching Netflix Home"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string/jumbo v0, "home"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->HOME:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 543
    return-void
.end method

.method private launchNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->isInstanceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Resuming paused playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->resumeNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    .line 562
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    .line 563
    const-string/jumbo v0, "play"

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->START_PLAY:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private launchNetflixVideoDetails(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V
    .locals 2

    .prologue
    .line 546
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "launching Netflix MDP/SDP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string/jumbo v0, "view_details"

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->VIEW_TITLE_DETAILS:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 548
    return-void
.end method

.method private launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 580
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    const-string/jumbo v1, "FROM_PREAPP_WIDGET"

    const-string/jumbo v2, "NetflixWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string/jumbo v1, "widgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string/jumbo v1, "actionName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method private listHasNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 796
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 797
    if-gez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->getVideoCountOfListForWidgetExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 802
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resumeNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;)V
    .locals 4

    .prologue
    .line 567
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 568
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    .line 569
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 571
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    .line 573
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 574
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method private sendVideoToWidget(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 5

    .prologue
    .line 481
    if-nez p2, :cond_0

    .line 482
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "video == null, unable to notify widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Sending video to widget. id:%s, type:%s, list:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto :goto_0
.end method

.method private setViewsToDefault(Landroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1285
    const v0, 0x7f0f02d8

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1286
    const v0, 0x7f0f02d5

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1287
    const v0, 0x7f0f02e2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1288
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1289
    const v0, 0x7f0f02d7

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1290
    const v0, 0x7f0f02e3

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1291
    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1292
    const v0, 0x7f0f02de

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1293
    const v0, 0x7f0f02e4

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1294
    const v0, 0x7f0f02eb

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1295
    return-void
.end method

.method private toAlignByHeight(Landroid/content/Context;I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v3, v0, -0x28

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    int-to-float v4, v0

    .line 295
    int-to-float v0, v3

    div-float v5, v4, v0

    .line 296
    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v6

    .line 298
    if-eq v6, v2, :cond_0

    const v0, 0x4099999a    # 4.8f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v2

    .line 301
    :goto_0
    const-string/jumbo v7, "nf_preapp_widgetagent"

    const-string/jumbo v8, "w-h(%f-%d) %f, heightInCells: %d, alignByHeight: %b"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v9, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method private toAlignByWidth(Landroid/content/Context;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v3

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v4

    .line 286
    if-le v3, v1, :cond_0

    if-le v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    move v0, v1

    .line 288
    :goto_0
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d, %d)(w,h), useMultipleTitles:%b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    :cond_0
    move v0, v2

    .line 286
    goto :goto_0
.end method

.method private updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 19

    .prologue
    .line 1017
    invoke-direct/range {p0 .. p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v17

    .line 1019
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move/from16 v16, v2

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget v8, v17, v16

    .line 1020
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getLayoutId(Landroid/content/Context;I)I

    move-result v9

    .line 1022
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "(%s), widgetId: %d, layoutId:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    .line 1025
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1027
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "pVideo.id %s in list %s, not present on disk - going to nm list"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 1029
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 1030
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1034
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "cannot refresh, even nm list is bad"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_1
    return-void

    .line 1039
    :cond_2
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1040
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1041
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p4

    .line 1044
    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildRemoteViews(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 1046
    iget-object v12, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    move-object/from16 v9, p0

    move v10, v8

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->decodeBitmapsAndUpdate(ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V

    .line 1019
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_0
.end method

.method private updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v7

    .line 1009
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget v3, v7, v6

    .line 1010
    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildWidgetStaticImageRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1011
    const-string/jumbo v4, ""

    sget-object v5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 1009
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1013
    :cond_0
    return-void
.end method

.method private updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "RemoteViews is null, ignore refreshing widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    sput-object p4, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    .line 91
    sput-object p5, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method protected doInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 81
    return-void
.end method

.method public handlePlayOrDetailsReq(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 974
    if-nez v0, :cond_1

    .line 975
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 980
    if-nez v0, :cond_2

    .line 981
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 986
    :cond_2
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 988
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "handlePlayOrDetailsReq play? %b - %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0, v1, p2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_0

    .line 992
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "handlePlayOrDetailsReq play? %b - %s, %s - %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    iget-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v1, v4, v8

    const/4 v1, 0x3

    iget-object v5, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-eqz p3, :cond_3

    .line 994
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V

    goto :goto_0

    .line 996
    :cond_3
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixVideoDetails(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V

    goto :goto_0
.end method

.method public handlePlayerStateChange(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1303
    const-string/jumbo v0, "isPlayerPaused"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    .line 1304
    const-string/jumbo v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    .line 1305
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "handlePlayerStateChange mIsNflxServicePlayerInPauseState: %b, mNflxServicePlayableId:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-boolean v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    return-void
.end method

.method public handleWidgetHomeReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 968
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixHome(Landroid/content/Context;I)V

    .line 969
    return-void
.end method

.method public handleWidgetRefreshReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 848
    if-nez v0, :cond_0

    .line 849
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_0
    return-void

    .line 853
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v2

    .line 854
    if-eqz v2, :cond_1

    .line 855
    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isNonMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 856
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request - going to static experience"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V

    .line 858
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 862
    :cond_2
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 863
    invoke-direct {p0, v1, p2, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 865
    if-eqz v1, :cond_3

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 866
    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_5

    .line 868
    :cond_3
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "listType or currentVideo is null getting first video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 870
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 871
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v3, "list:%s, not enough - going to next"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 874
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 891
    :goto_1
    if-nez v0, :cond_7

    .line 892
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 893
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 894
    if-nez v0, :cond_7

    .line 895
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getNextList is not valid - ignoring refresh request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 877
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v3

    .line 878
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v4

    .line 879
    if-eqz v3, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v1, v2, v5, v4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 880
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 881
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "list:%s, not enough videos  pos:%d, need:%d, (%s-%s)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v7, v3

    const/4 v3, 0x4

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 883
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 884
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "jumped to list:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 886
    :cond_6
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "list:%s, has enough pos:%d, need:%d, (%s-%s)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v7, v3

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto/16 :goto_1

    .line 900
    :cond_7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto/16 :goto_0
.end method

.method public handleWidgetResizeReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 825
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "handleWidgetResizeReq"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 827
    if-nez v0, :cond_1

    .line 828
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_2

    .line 834
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isNonMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 835
    :cond_2
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request - going to static experience"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V

    .line 837
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 840
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_0

    .line 842
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto :goto_0
.end method

.method public logWidgetRefreshEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 904
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v0

    .line 905
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 906
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "cannot log refresh action invalid widgetId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    return-void

    .line 909
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->GO_TO_NEXT:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;I)V

    goto :goto_0
.end method

.method public updateWidgetWithLatestData(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v1

    .line 107
    if-nez v1, :cond_2

    .line 108
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "mDiskData is null - ignoring request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v2

    .line 114
    invoke-direct {p0, v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 115
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "list:%s, not enough need:%d - going to next"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 119
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->sendVideoToWidget(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 123
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchNonMemberData()V

    goto :goto_0
.end method
