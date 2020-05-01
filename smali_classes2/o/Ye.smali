.class public final Lo/Ye;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 609
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oo:I

    goto :goto_0

    .line 606
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ol:I

    goto :goto_0

    .line 603
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ok:I

    :goto_0
    return p0
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 1

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 542
    invoke-static {p0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "appWidgetMaxWidth"

    .line 543
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "appWidgetMinWidth"

    .line 544
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static a(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    :goto_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    .line 1233
    :cond_1
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-static {p0, p4, p1, p2, p3}, Lo/Ye;->d(Landroid/content/Context;Landroid/content/Intent;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 943
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 944
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 946
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 947
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 948
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 949
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 435
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    div-int v2, v0, p1

    .line 441
    div-int v3, v1, p1

    if-lez v2, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "nf_widget_helper"

    const-string v0, "scaleDownBitmap originalW=%d originalH=%d scaleDownFactor=%d, dstWidth=%d dstHeight=%d "

    invoke-static {p1, v0, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    invoke-static {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;III)Landroid/widget/RemoteViews;
    .locals 9

    .line 1044
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1045
    invoke-static {p0}, Lo/Ye;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-static {p0, v0, p1}, Lo/Ye;->d(Landroid/content/Context;Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 1049
    :cond_0
    invoke-static {p0, p2, p1}, Lo/Ye;->b(Landroid/content/Context;II)I

    move-result v3

    const-string v1, "nf_widget_helper"

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    :goto_0
    if-gt v6, v2, :cond_1

    new-array v7, v5, [Ljava/lang/Object;

    .line 1052
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "setting %d to gone"

    invoke-static {v1, v8, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1053
    invoke-static {v6}, Lo/Ye;->c(I)I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v3, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "for widgetId:%d, image:%d"

    invoke-static {v1, v7, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1059
    invoke-static {v0}, Lo/Ye;->c(I)I

    move-result v6

    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1060
    invoke-static {p0, v2, p1, v0, p3}, Lo/Ye;->c(Landroid/content/Context;Landroid/widget/RemoteViews;III)Landroid/widget/RemoteViews;

    move-result-object v2

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move-object v1, v2

    move-object v0, p0

    move v2, p3

    move v4, p1

    move v5, p2

    .line 1066
    invoke-static/range {v0 .. v5}, Lo/Ye;->e(Landroid/content/Context;Landroid/widget/RemoteViews;IIII)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 8

    .line 473
    invoke-static {p0}, Lo/Ye;->b(Landroid/content/Context;)I

    move-result p0

    .line 474
    invoke-static {p1, p2}, Lo/Ye;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 476
    invoke-static {v0, p2, v1, p0}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "nf_widget_helper"

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v4

    .line 479
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v7, "skip list:%s, currentList:%s, need:%d"

    invoke-static {v6, v7, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 480
    invoke-static {v0, p2}, Lo/Ye;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v4

    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "using nextList:%s, currentList:%s, need:%s"

    invoke-static {v6, p0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private static a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    if-nez p1, :cond_0

    .line 130
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    sget-object v0, Lo/Ye$3;->e:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    .line 153
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 150
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 148
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 137
    :cond_3
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 138
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 139
    :cond_4
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 140
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 141
    :cond_5
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 142
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 143
    :cond_6
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 144
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 157
    :cond_7
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0
.end method

.method private static a(Landroid/content/Context;IILandroid/widget/RemoteViews;I)V
    .locals 7

    .line 416
    invoke-static {}, Lo/aeB;->c()Z

    .line 417
    invoke-static {p0, p1, p2}, Lo/Ye;->b(Landroid/content/Context;II)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    add-int v5, v1, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v3, "nf_widget_helper"

    const-string v6, "decodeBitmapsAndUpdateForStaticImages imagesToShow: %d, i: %d, startVideoIndex: %d, (i+ start): %d"

    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v5}, Lo/Ye;->o(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 422
    invoke-static {v1}, Lo/Ye;->b(I)I

    move-result v2

    invoke-static {p0, v5}, Lo/Ye;->o(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 424
    :cond_0
    invoke-static {}, Lo/aek;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    invoke-static {v2, v4}, Lo/Ye;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 427
    :cond_1
    invoke-static {v1}, Lo/Ye;->b(I)I

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_2
    invoke-static {p0, p3, p2}, Lo/Ye;->e(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 4

    .line 98
    invoke-static {p0}, Lo/Ye;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, v1}, Lo/Ye;->c(Landroid/content/Context;I)V

    return-void

    :cond_0
    const-string v0, "nf_widget_helper"

    if-nez p2, :cond_1

    const-string p0, "mDiskData is null - ignoring request"

    .line 104
    invoke-static {v0, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_1
    invoke-static {p1, p2}, Lo/Ye;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    .line 108
    invoke-static {p0}, Lo/Ye;->b(Landroid/content/Context;)I

    move-result v2

    .line 109
    invoke-static {p1, p2, v1, v2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v1, 0x1

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "list:%s, not enough need:%d - going to next"

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    invoke-static {p0, p1, p2}, Lo/Ye;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    .line 114
    :cond_2
    invoke-static {p1, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object v0

    .line 115
    invoke-static {p0, v0, p1, p2}, Lo/Ye;->b(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lo/xO$Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 809
    invoke-static {p0, v0, p1}, Lo/Ye;->e(Landroid/content/Context;ILo/xO$Activity;)V

    return-void
.end method

.method private static a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;",
            "Lo/xW;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")Z"
        }
    .end annotation

    .line 321
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 326
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p3}, Lo/xT;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p2, p1

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 577
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ox:I

    goto :goto_0

    .line 574
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oA:I

    goto :goto_0

    .line 571
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oD:I

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 7

    .line 512
    invoke-static {p0}, Lo/Ye;->c(Landroid/content/Context;)[I

    move-result-object v0

    .line 514
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    .line 515
    invoke-static {p0, v5}, Lo/Ye;->i(Landroid/content/Context;I)I

    move-result v6

    .line 516
    invoke-static {p0, v6, v5}, Lo/Ye;->b(Landroid/content/Context;II)I

    move-result v5

    if-le v5, v4, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "nf_widget_helper"

    const-string v1, "maxNumOfImages among all widgets %d"

    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4
.end method

.method private static b(Landroid/content/Context;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 533
    invoke-static {p0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "appWidgetMinHeight"

    .line 534
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "appWidgetMaxHeight"

    .line 535
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;II)I
    .locals 7

    .line 664
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eO:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_5

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eS:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    if-eq v0, p1, :cond_5

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eX:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 672
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eW:I

    const/4 v2, 0x3

    if-ne v0, p1, :cond_2

    return v2

    .line 676
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eR:I

    if-ne v0, p1, :cond_5

    .line 677
    invoke-static {p0, p2}, Lo/Ye;->b(Landroid/content/Context;I)I

    move-result p1

    .line 678
    invoke-static {p0, p2}, Lo/Ye;->a(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p2, p1

    div-float p2, p0, p2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 680
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "nf_widget_helper"

    const-string v3, "w-h(%f-%d) %f "

    invoke-static {p0, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    float-to-double v3, p2

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    const-string p1, "1 image only"

    .line 683
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_4

    const-string p2, "2 image only"

    .line 687
    invoke-static {p0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_4
    const-string p1, "3 images"

    .line 691
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private static b(Landroid/content/Context;III)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    :goto_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const-string v0, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    :cond_1
    add-int/2addr p3, p2

    .line 1220
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-static {p0, p2, p1, p3}, Lo/Ye;->e(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/widget/RemoteViews;Lo/xW;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;
    .locals 5

    .line 1180
    invoke-static {p5}, Lo/Ye;->b(I)I

    move-result v0

    .line 1181
    invoke-static {p0, p2, p4, p3, p5}, Lo/Ye;->a(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1183
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1, p4}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    iget v1, p2, Lo/xW;->playableRuntime:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget v1, p2, Lo/xW;->plyableBookmarkPos:I

    mul-int/lit8 v1, v1, 0x64

    iget v4, p2, Lo/xW;->playableRuntime:I

    div-int/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1188
    :goto_0
    invoke-static {p5}, Lo/Ye;->j(I)I

    move-result v4

    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1189
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {p2, p4, p6, p5}, Lo/Ye;->c(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object p6

    invoke-virtual {v1, p6}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 1190
    invoke-static {p5}, Lo/Ye;->i(I)I

    move-result p6

    invoke-static {p0, p4, p2}, Lo/Ye;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lo/xW;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1193
    :cond_1
    invoke-static {p5}, Lo/Ye;->a(I)I

    move-result p6

    invoke-virtual {p1, p6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1194
    invoke-static {p5}, Lo/Ye;->e(I)I

    move-result p6

    invoke-virtual {p1, p6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1195
    invoke-static {p5}, Lo/Ye;->f(I)I

    move-result p6

    invoke-virtual {p1, p6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1197
    invoke-static {p5}, Lo/Ye;->e(I)I

    move-result p6

    invoke-static {p0, p2, p4, p3, p5}, Lo/Ye;->d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, p6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1198
    invoke-static {p0, p2, p4, p3, p5}, Lo/Ye;->d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_2
    return-object p1
.end method

.method private static b(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;)V"
        }
    .end annotation

    .line 455
    invoke-static {}, Lo/aeB;->c()Z

    .line 457
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v2, "nf_widget_helper"

    const-string v3, "decoding (%d), bitmap (%d), %s, %s, "

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {p0, v0, v1}, Lo/Ye;->e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "use static images and start over "

    .line 461
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {p0}, Lo/xQ;->d(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 463
    invoke-static {p0, p1}, Lo/Ye;->a(Landroid/content/Context;Lo/xO$Activity;)V

    return-void

    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 466
    invoke-static {p5}, Lo/Ye;->b(I)I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-static {p0, p2, p1}, Lo/Ye;->e(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 836
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static b(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 4

    const-string v0, "nf_widget_helper"

    if-nez p1, :cond_0

    const-string p0, "video == null, unable to notify widget"

    .line 121
    invoke-static {v0, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 124
    iget-object v3, p1, Lo/xW;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lo/xW;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Sending video to widget. id:%s, type:%s, list:%s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    invoke-static {p0, p1, p2, p3}, Lo/Ye;->d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 561
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->om:I

    goto :goto_0

    .line 558
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->or:I

    goto :goto_0

    .line 555
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->on:I

    :goto_0
    return p0
.end method

.method private static c(Landroid/content/Context;III)Landroid/app/PendingIntent;
    .locals 4

    .line 1250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    add-int/2addr p2, p3

    rem-int/lit8 p3, p2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string p3, "nf_widget_helper"

    const-string v2, "refreshIntent startVideoIndex %d, imagesToShow %s, putting %d"

    invoke-static {p3, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1252
    invoke-static {p0, v0, p1, p2}, Lo/Ye;->e(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-static {p0, v0, p1, p2, p3}, Lo/Ye;->d(Landroid/content/Context;Landroid/content/Intent;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 903
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 904
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 905
    div-int v2, v0, v1

    int-to-float v2, v2

    const v3, 0x3fe3d70a    # 1.78f

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v6, v2, v3

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Object;

    .line 908
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v10, 0x3

    aput-object v2, v8, v10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v11, 0x4

    aput-object v2, v8, v11

    const-string v2, "nf_widget_helper"

    const-string v12, "getResizedBitmapForTrickplay -  w-h: %d-%d, aspectRatio:%f(%f), cropWidth:%b"

    invoke-static {v2, v12, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v6, :cond_3

    int-to-float v6, v1

    mul-float v6, v6, v3

    .line 911
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v6, v0, v3

    .line 912
    div-int/2addr v6, v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 914
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    add-int v8, v6, v3

    if-ge v8, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v11

    const-string v4, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectWidth:%d, x:%d, shouldCropWidth:%b"

    invoke-static {v2, v4, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ge v8, v0, :cond_2

    .line 918
    invoke-static {p0, v6, v5, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 919
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    int-to-float v6, v0

    div-float/2addr v6, v3

    .line 925
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v6, v1, v3

    .line 926
    div-int/2addr v6, v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 928
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    add-int v8, v6, v3

    if-ge v8, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v11

    const-string v4, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectHeight:%d, y:%d, shouldCropHeight:%b"

    invoke-static {v2, v4, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ge v8, v1, :cond_5

    .line 932
    invoke-static {p0, v5, v6, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 933
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_5
    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroid/widget/RemoteViews;III)Landroid/widget/RemoteViews;
    .locals 1

    .line 1173
    invoke-static {p3}, Lo/Ye;->b(I)I

    move-result v0

    .line 1174
    invoke-static {p0, p2, p3, p4}, Lo/Ye;->b(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method private static c(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/xW;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;II",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1075
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1076
    invoke-static {v0}, Lo/Ye;->c(Landroid/widget/RemoteViews;)V

    move-object/from16 v1, p2

    .line 1078
    invoke-static {v1, v8}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v2

    .line 1079
    iget-object v3, v8, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    move-object/from16 v10, p0

    move/from16 v11, p5

    .line 1080
    invoke-static {v10, v7, v11}, Lo/Ye;->b(Landroid/content/Context;II)I

    move-result v12

    const-string v13, "nf_widget_helper"

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/4 v6, 0x1

    if-ge v12, v15, :cond_0

    add-int/lit8 v3, v12, 0x1

    :goto_0
    if-gt v3, v15, :cond_0

    new-array v4, v6, [Ljava/lang/Object;

    .line 1084
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "setting %d to gone"

    invoke-static {v13, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1085
    invoke-static {v3}, Lo/Ye;->c(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    move-object v4, v1

    const/4 v5, 0x1

    move-object v1, v0

    :goto_1
    if-gt v5, v12, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1090
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v6

    const/16 v16, 0x2

    aput-object v4, v0, v16

    iget-object v6, v3, Lo/xW;->id:Ljava/lang/String;

    aput-object v6, v0, v15

    iget-object v6, v3, Lo/xW;->title:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v6, v0, v15

    const-string v6, "for widgetId:%d, image:%d, (%s), %s:%s"

    invoke-static {v13, v6, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1092
    invoke-static {v5}, Lo/Ye;->c(I)I

    move-result v0

    invoke-virtual {v1, v0, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p0

    move-object v6, v2

    move-object v2, v3

    move-object v14, v3

    move/from16 v3, p5

    move-object/from16 p1, v4

    move/from16 p2, v5

    move-object v15, v6

    const/16 v17, 0x1

    move/from16 v6, p6

    .line 1093
    invoke-static/range {v0 .. v6}, Lo/Ye;->b(Landroid/content/Context;Landroid/widget/RemoteViews;Lo/xW;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;

    move-result-object v1

    move/from16 v6, p2

    if-ne v6, v12, :cond_1

    move-object/from16 v4, p1

    goto/16 :goto_4

    :cond_1
    move-object/from16 v4, p1

    .line 1099
    invoke-static {v4, v15, v14, v8}, Lo/Ye;->a(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    invoke-static {v15, v14, v4, v8}, Lo/Ye;->d(Ljava/util/List;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;

    move-result-object v0

    move-object v3, v0

    move-object v2, v15

    goto :goto_2

    .line 1102
    :cond_2
    invoke-static {v4, v8}, Lo/Ye;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 1103
    invoke-static {v0, v8}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v2

    .line 1104
    invoke-static {v2}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v4, v14

    aput-object v0, v4, v17

    iget-object v5, v3, Lo/xW;->id:Ljava/lang/String;

    aput-object v5, v4, v16

    iget-object v5, v3, Lo/xW;->title:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "(%d)list at end, next video (%s) %s:%s "

    invoke-static {v13, v5, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v4, v0

    :goto_2
    add-int/lit8 v5, v6, 0x1

    .line 1108
    invoke-static {v3, v4, v7, v5}, Lo/Ye;->c(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v0

    .line 1109
    invoke-static {v8, v3, v0}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v14

    .line 1110
    invoke-static {v14}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v15, p3

    .line 1111
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p4

    .line 1112
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p1, v1

    const/4 v0, 0x3

    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 p1, v1

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v1, v18

    iget-object v6, v3, Lo/xW;->title:Ljava/lang/String;

    aput-object v6, v1, v17

    aput-object v4, v1, v16

    const-string v6, "(%d) url null for video:%s in list %s"

    invoke-static {v13, v6, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    move-object/from16 v1, p1

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_4
    move-object v15, v2

    move-object v14, v3

    :goto_4
    move-object/from16 v0, p0

    move v2, v12

    move-object v3, v14

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v9

    move-object v8, v15

    .line 1118
    invoke-static/range {v0 .. v8}, Lo/Ye;->d(Landroid/content/Context;Landroid/widget/RemoteViews;ILo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 955
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "nf_widget_helper"

    const-string v3, "getImageType - getResizedBitmapForTrickplay%d, listType:%s, videoPos:%d"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 956
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eW:I

    if-ne v0, p2, :cond_0

    if-le p3, v1, :cond_0

    .line 957
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object p0

    .line 959
    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    if-ne p3, p2, :cond_1

    .line 960
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object p0

    .line 962
    :cond_1
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lo/xW;->isPlayable:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    :goto_0
    return-object p0
.end method

.method private static c(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lo/xW;)Ljava/lang/String;
    .locals 3

    .line 1204
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v0, p2, Lo/xW;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1205
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jg:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p2, Lo/xW;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p2, Lo/xW;->playableSeasonNumAbbrLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget p2, p2, Lo/xW;->playableEpisodeNumber:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1207
    :cond_0
    iget-object p0, p2, Lo/xW;->title:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    sget-object v1, Lo/Ye$3;->d:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 259
    :pswitch_0
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    return-object p0

    .line 257
    :pswitch_1
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    return-object p0

    .line 255
    :pswitch_2
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    return-object p0

    .line 253
    :pswitch_3
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    return-object p0

    .line 251
    :pswitch_4
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    return-object p0

    .line 249
    :pswitch_5
    iget-object p0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "nf_widget_helper"

    const-string p1, "diskData is null - ignoring request"

    .line 243
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "nf_widget_helper"

    if-nez p3, :cond_0

    const-string p0, "diskData is null - ignoring request"

    .line 274
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 278
    :cond_0
    invoke-static {p1, p3}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 292
    invoke-static {v2, p1, p3}, Lo/Ye;->e(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result p3

    add-int/lit8 v6, p0, 0x1

    if-ge v6, p3, :cond_2

    .line 294
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lo/xW;

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 296
    iget-object p2, p2, Lo/xW;->id:Ljava/lang/String;

    aput-object p2, v6, v4

    aput-object p1, v6, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    const/4 p0, 0x3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, p0

    const/4 p0, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, p0

    const-string p0, "next null - videoId: %s, is last in listType: %s, index: %d, size: %d, upperBound:%d"

    invoke-static {v1, p0, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    const-string p1, "(getNextVideo) listType: %s or currentVideo %s is null getting first video"

    .line 281
    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    sget-object p1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p3}, Lo/Ye;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    .line 283
    invoke-static {p0, p1, p3}, Lo/Ye;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string v0, "list:%s, not enough - going to next"

    .line 284
    invoke-static {v1, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-static {p0, p1, p3}, Lo/Ye;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    .line 287
    :cond_4
    invoke-static {p1, p3}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 9

    .line 370
    invoke-static {p0}, Lo/Ye;->c(Landroid/content/Context;)[I

    move-result-object v0

    .line 372
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 373
    invoke-static {p0, v4}, Lo/Ye;->i(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "static"

    aput-object v7, v6, v2

    .line 374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "nf_widget_helper"

    const-string v8, "(%s), widgetId: %d, layoutId:%d"

    invoke-static {v7, v8, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    invoke-static {p0, v4, v5, p1}, Lo/Ye;->a(Landroid/content/Context;III)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 376
    invoke-static {p0, v5, v4, v6, p1}, Lo/Ye;->a(Landroid/content/Context;IILandroid/widget/RemoteViews;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xO$Activity;)V
    .locals 11

    .line 759
    invoke-static {p0}, Lo/Ye;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 760
    invoke-static {p0, v1, p3}, Lo/Ye;->e(Landroid/content/Context;ILo/xO$Activity;)V

    return-void

    .line 764
    :cond_0
    invoke-static {p1}, Lo/Ye;->d(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 765
    invoke-static {v0, p1, p2}, Lo/Ye;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;

    move-result-object p1

    const-string v2, "nf_widget_helper"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 767
    sget-object v4, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 768
    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 779
    :cond_1
    invoke-static {v0, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v4

    .line 780
    invoke-static {p0}, Lo/Ye;->b(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x5

    if-eqz v4, :cond_2

    .line 781
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v3

    invoke-static {v0, p2, v10, v5}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 782
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v1

    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v8

    iget-object v4, p1, Lo/xW;->id:Ljava/lang/String;

    aput-object v4, v9, v7

    iget-object p1, p1, Lo/xW;->title:Ljava/lang/String;

    aput-object p1, v9, v6

    const-string p1, "list:%s, not enough videos  pos:%d, need:%d, (%s-%s)"

    invoke-static {v2, p1, v9}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 784
    invoke-static {p0, v0, p2}, Lo/Ye;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 785
    invoke-static {v0, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v1, "jumped to list:%s"

    .line 786
    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v1

    .line 788
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v8

    iget-object v1, p1, Lo/xW;->id:Ljava/lang/String;

    aput-object v1, v9, v7

    iget-object v1, p1, Lo/xW;->title:Ljava/lang/String;

    aput-object v1, v9, v6

    const-string v1, "list:%s, has enough pos:%d, need:%d, (%s-%s)"

    invoke-static {v2, v1, v9}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 789
    invoke-static {p0, v0, p1, p2}, Lo/Ye;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "listType or currentVideo is null getting first video"

    .line 770
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    sget-object p1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2}, Lo/Ye;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    .line 772
    invoke-static {p0, p1, p2}, Lo/Ye;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "list:%s, not enough - going to next"

    .line 773
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 774
    invoke-static {p0, p1, p2}, Lo/Ye;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p1

    :cond_4
    move-object v0, p1

    .line 776
    invoke-static {v0, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    .line 794
    invoke-static {v0, p2}, Lo/Ye;->d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 795
    invoke-static {v0, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "getNextList is not valid - ignoring refresh request"

    .line 797
    invoke-static {v2, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p3}, Lo/Ye;->d(Lo/xO$Activity;)V

    return-void

    .line 803
    :cond_5
    invoke-static {p0, p1, v0, p2}, Lo/Ye;->d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 804
    invoke-static {p3}, Lo/Ye;->d(Lo/xO$Activity;)V

    return-void
.end method

.method private static c(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 699
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 700
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->op:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 701
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ot:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 702
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oq:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 703
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oo:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 704
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ok:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 705
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ol:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 706
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ow:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 707
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oy:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 708
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ou:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private static c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 1

    .line 491
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    invoke-static {p0, p1, p2}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 495
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 754
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isNonMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Landroid/content/Context;)[I
    .locals 5

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/netflix/mediaclient/ui/preapp/PServiceWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 356
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v4, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    .line 359
    array-length v0, v2

    array-length v3, p0

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 360
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    array-length v2, v2

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string p0, "nf_widget_helper"

    const-string v0, " cannot get appWidgetIds via appWidgetManager "

    .line 364
    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v1, [I

    return-object p0
.end method

.method public static d(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1e

    .line 548
    div-int/lit8 p0, p0, 0x46

    return p0
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1277
    const-class v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 1278
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "widgetId"

    .line 1279
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1281
    iget-object p4, p2, Lo/xW;->id:Ljava/lang/String;

    invoke-static {p4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1282
    iget-object p4, p2, Lo/xW;->id:Ljava/lang/String;

    const-string v0, "videoId"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    iget-object p4, p2, Lo/xW;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p4

    const-string v0, "videoType"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    iget-object p2, p2, Lo/xW;->playableId:Ljava/lang/String;

    const-string p4, "playableId"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    .line 1287
    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1288
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "listType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p2, 0x0

    const/high16 p3, 0x8000000

    .line 1291
    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    const-string v0, "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

    :goto_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    const-string v0, "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

    .line 1245
    :cond_1
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    invoke-static {p0, p4, p1, p2, p3}, Lo/Ye;->d(Landroid/content/Context;Landroid/content/Intent;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 332
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "file://"

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "nf_widget_helper"

    const-string v2, "%s does not exist"

    .line 342
    invoke-static {p0, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .line 346
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;
    .locals 1

    .line 1124
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ox:I

    invoke-static {p0, p2}, Lo/Ye;->k(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method private static d(Landroid/content/Context;Landroid/widget/RemoteViews;ILo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Lo/xW;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 1150
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->of:I

    invoke-static {p0, p5}, Lo/Ye;->k(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1151
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    const/4 v1, 0x0

    if-ne v0, p6, :cond_0

    .line 1152
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ov:I

    invoke-static {p0, p3, p4, p5}, Lo/Ye;->c(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1153
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p0, 0x1

    .line 1154
    invoke-static {p0}, Lo/Ye;->a(I)I

    move-result p0

    invoke-virtual {p1, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 1156
    :cond_0
    sget p6, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    invoke-static {p0, p3, p4, p5}, Lo/Ye;->c(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, p6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1158
    invoke-static {p0, p5}, Lo/Ye;->d(Landroid/content/Context;I)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 1159
    sget-object p5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p5, p4}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1160
    invoke-interface {p8, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    div-int p2, p3, p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1162
    :goto_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    invoke-static {p0, p2}, Lo/Ye;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1164
    :cond_2
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    invoke-virtual {p1, p0, p7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static d(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    .line 717
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "listType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 719
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object p0

    return-object p0

    .line 723
    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0
.end method

.method private static d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .line 161
    sget-object v0, Lo/Ye$3;->d:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 233
    :pswitch_0
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 219
    :pswitch_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 225
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 226
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 228
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 229
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 205
    :pswitch_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 206
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 208
    :cond_3
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 209
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 211
    :cond_4
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 212
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 214
    :cond_5
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 215
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 191
    :pswitch_3
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 192
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 194
    :cond_6
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 195
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 197
    :cond_7
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 198
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 200
    :cond_8
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 201
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 177
    :pswitch_4
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 178
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 180
    :cond_9
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 181
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 183
    :cond_a
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 184
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 186
    :cond_b
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 187
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 163
    :pswitch_5
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 164
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 166
    :cond_c
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 167
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 169
    :cond_d
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 170
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0

    .line 172
    :cond_e
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 173
    sget-object p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    :cond_f
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "nf_widget_helper"

    if-eqz p0, :cond_4

    .line 727
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 728
    invoke-virtual {v2, p0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 729
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 735
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "extra_video_id is null"

    .line 736
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "getVideoShownInWidget %s-%s"

    .line 740
    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 741
    invoke-static {p0, p2}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 743
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/xW;

    .line 744
    iget-object v1, p2, Lo/xW;->id:Ljava/lang/String;

    invoke-static {p1, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string p0, "getVideoShownInWidget - listType / videoId  null"

    .line 730
    invoke-static {v1, p0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static d(Ljava/util/List;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lo/xW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;",
            "Lo/xW;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Lo/xW;"
        }
    .end annotation

    .line 310
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_0

    .line 312
    invoke-static {p0, p2, p3}, Lo/Ye;->e(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 313
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/xW;

    return-object p0

    :cond_0
    const-string p0, "nf_widget_helper"

    const-string p1, "getNextVideoInList is null"

    .line 315
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.REFRESH_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    const-class v1, Lo/bM;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_WIDGET_PROVIDER"

    .line 821
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    invoke-static {}, Lo/adk;->i()Z

    move-result v1

    const-string v2, "nf_widget_helper"

    if-eqz v1, :cond_0

    const-string v1, "Android O, start foreground service..."

    .line 824
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const-string v2, "start_foreground"

    .line 825
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    const-string v2, "start_requester"

    .line 826
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    invoke-static {p0, v0}, Lo/Ye;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "Pre Android O, start service..."

    .line 829
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 21

    move-object/from16 v8, p3

    .line 382
    invoke-static/range {p0 .. p0}, Lo/Ye;->c(Landroid/content/Context;)[I

    move-result-object v9

    .line 384
    array-length v10, v9

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_2

    aget v14, v9, v12

    move-object/from16 v15, p0

    .line 385
    invoke-static {v15, v14}, Lo/Ye;->i(Landroid/content/Context;I)I

    move-result v6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    .line 387
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "nf_widget_helper"

    const-string v7, "(%s), widgetId: %d, layoutId:%d"

    invoke-static {v3, v7, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    invoke-static {v1, v0, v6, v4}, Lo/Ye;->c(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v2

    .line 390
    invoke-static {v8, v1, v2}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v7

    .line 391
    invoke-static {v7}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    .line 392
    iget-object v1, v1, Lo/xW;->id:Ljava/lang/String;

    aput-object v1, v2, v11

    aput-object v0, v2, v4

    const-string v0, "pVideo.id %s in list %s, not present on disk - going to nm list"

    invoke-static {v3, v0, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 393
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 394
    iget-object v1, v8, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    invoke-static {v1}, Lo/Ye;->e(Ljava/util/List;)Lo/xW;

    move-result-object v1

    .line 395
    invoke-static {v1, v0, v6, v4}, Lo/Ye;->c(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v2

    .line 396
    invoke-static {v8, v1, v2}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    move-object/from16 v20, v0

    move-object v13, v1

    .line 398
    invoke-static {v7}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cannot refresh, even nm list is bad"

    .line 399
    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 405
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 406
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v20

    move-object v3, v5

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move v5, v14

    move-object/from16 v7, p3

    .line 409
    invoke-static/range {v0 .. v7}, Lo/Ye;->c(Landroid/content/Context;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 411
    iget-object v1, v13, Lo/xW;->id:Ljava/lang/String;

    move-object v2, v13

    move-object/from16 v13, p0

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v20

    invoke-static/range {v13 .. v19}, Lo/Ye;->b(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v12, v12, 0x1

    move-object v1, v2

    move-object/from16 v0, v20

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static d(Lo/xO$Activity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0}, Lo/xO$Activity;->a()V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;I)Z
    .locals 1

    .line 712
    invoke-static {p0, p1}, Lo/Ye;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    .line 713
    invoke-static {p0, p1}, Lo/Ye;->e(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x43480000    # 200.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 1

    .line 487
    invoke-static {p0}, Lo/Ye;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result p0

    return p0
.end method

.method private static e(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 593
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->op:I

    goto :goto_0

    .line 590
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oq:I

    goto :goto_0

    .line 587
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ot:I

    :goto_0
    return p0
.end method

.method private static e(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 306
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p2}, Lo/xT;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 2

    .line 1267
    const-class v0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 1268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "widgetId"

    .line 1269
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    rem-int/lit8 p3, p3, 0x3

    const-string v0, "videoIndex"

    .line 1270
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 1271
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "listType"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p3, 0x8000000

    .line 1273
    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;
    .locals 8

    .line 861
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 862
    invoke-static {p1}, Lo/Ye;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v2, "nf_widget_helper"

    if-nez p1, :cond_0

    const-string p0, "bitmap does not exist"

    .line 864
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_0
    invoke-static {v0, v1}, Lo/aeC;->c(J)J

    move-result-wide v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 868
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "bitmap decode took (%s) %d ms"

    invoke-static {v2, v0, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 871
    invoke-static {p0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lo/aek;->g()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 873
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 875
    invoke-static {p1}, Lo/Ye;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 876
    invoke-static {v6, v7}, Lo/aeC;->c(J)J

    move-result-wide v6

    new-array p0, v1, [Ljava/lang/Object;

    .line 877
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v5

    const-string v0, "bitmap resize (CW) took %d ms"

    invoke-static {v2, v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    .line 881
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 882
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 883
    invoke-static {p1}, Lo/Ye;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 884
    invoke-static {v6, v7}, Lo/aeC;->c(J)J

    move-result-wide v6

    new-array p0, v1, [Ljava/lang/Object;

    .line 885
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p0, v5

    const-string p2, "bitmap resize (tvCard) took %d ms"

    invoke-static {v2, p2, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :cond_3
    if-eqz p0, :cond_4

    .line 890
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 891
    invoke-static {p1, v3}, Lo/Ye;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 892
    invoke-static {v6, v7}, Lo/aeC;->c(J)J

    move-result-wide v6

    new-array p0, v1, [Ljava/lang/Object;

    .line 893
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p0, v5

    const-string p2, "scale down bitmap took %d ms"

    invoke-static {v2, p2, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    new-array p0, v3, [Ljava/lang/Object;

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v1

    const-string p2, "bitmap w:%d h:%d"

    invoke-static {v2, p2, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p1
.end method

.method private static e(Landroid/content/Context;Landroid/widget/RemoteViews;IIII)Landroid/widget/RemoteViews;
    .locals 2

    .line 1130
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->of:I

    invoke-static {p0, p4}, Lo/Ye;->k(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1131
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    const/4 v1, 0x0

    if-ne v0, p5, :cond_0

    .line 1132
    sget p5, Lcom/netflix/mediaclient/ui/R$Fragment;->ov:I

    invoke-static {p0, p4, p2, p3}, Lo/Ye;->c(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p5, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1133
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p0, 0x1

    .line 1134
    invoke-static {p0}, Lo/Ye;->a(I)I

    move-result p0

    invoke-virtual {p1, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1136
    :cond_0
    sget p5, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    invoke-static {p0, p4, p2, p3}, Lo/Ye;->c(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, p5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1138
    invoke-static {p0, p4}, Lo/Ye;->d(Landroid/content/Context;I)Z

    move-result p4

    if-eqz p4, :cond_2

    if-lez p2, :cond_1

    .line 1139
    rem-int/lit8 p2, p2, 0x3

    div-int v1, p2, p3

    .line 1140
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->os:I

    invoke-static {p0, v1}, Lo/Ye;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static e(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "nf_widget_helper"

    if-eqz p1, :cond_2

    .line 846
    invoke-static {p1, p2}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object p0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lo/xW;->d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/xW;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 852
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "resource not on disk, ignore widget update"

    .line 853
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "pVideo is not valid, ignore newRemoteView"

    .line 847
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static e(Ljava/util/List;)Lo/xW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xW;",
            ">;)",
            "Lo/xW;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 267
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/xW;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;ILo/xO$Activity;)V
    .locals 0

    .line 813
    invoke-static {p0, p1}, Lo/Ye;->c(Landroid/content/Context;I)V

    .line 814
    invoke-static {p0}, Lo/Ye;->d(Landroid/content/Context;)V

    .line 815
    invoke-static {p2}, Lo/Ye;->d(Lo/xO$Activity;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "nf_widget_helper"

    const-string p1, "RemoteViews is null, ignore refreshing widget"

    .line 1296
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1300
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 1301
    invoke-virtual {p0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .line 1021
    invoke-static {}, Lo/fN;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/adR;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/content/Context;I)Z
    .locals 0

    .line 524
    invoke-static {p0, p1}, Lo/Ye;->b(Landroid/content/Context;I)I

    move-result p0

    .line 525
    invoke-static {p0}, Lo/Ye;->d(I)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 499
    invoke-static {p0, p1, p2, v0}, Lo/Ye;->e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result p0

    return p0
.end method

.method private static e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 5

    .line 503
    invoke-static {p0, p1}, Lo/Ye;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {v0, p0, p1}, Lo/Ye;->e(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v3

    add-int v4, p2, p3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    .line 506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0, p0, p1}, Lo/Ye;->e(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    const/4 p0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    const/4 p0, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    const/4 p0, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, p0

    const-string p0, "nf_widget_helper"

    const-string p1, "list:%s, size:%d, upperBound:%d, position:%d, need:%d, hasEnough:%b"

    .line 505
    invoke-static {p0, p1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3
.end method

.method private static f(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 657
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ow:I

    goto :goto_0

    .line 654
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->ou:I

    goto :goto_0

    .line 651
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oy:I

    :goto_0
    return p0
.end method

.method private static f(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 1026
    rem-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 1035
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oT:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1031
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oU:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1028
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oO:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1038
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string p1, "nf_widget_helper"

    const-string v1, "ad (%d) %s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p0
.end method

.method private static g(Landroid/content/Context;I)Z
    .locals 6

    .line 975
    invoke-static {p0, p1}, Lo/Ye;->b(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    .line 976
    invoke-static {p0, p1}, Lo/Ye;->a(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v0

    div-float p1, p0, p1

    .line 978
    invoke-static {v0}, Lo/Ye;->d(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const v4, 0x4099999a    # 4.8f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 983
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, p0

    const-string p0, "nf_widget_helper"

    const-string p1, "w-h(%f-%d) %f, heightInCells: %d, alignByHeight: %b"

    invoke-static {p0, p1, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4
.end method

.method private static h(Landroid/content/Context;I)Z
    .locals 5

    .line 966
    invoke-static {p0, p1}, Lo/Ye;->b(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    invoke-static {v0}, Lo/Ye;->d(I)I

    move-result v0

    .line 967
    invoke-static {p0, p1}, Lo/Ye;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Lo/Ye;->d(I)I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-le p0, p1, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-gt p0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 970
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, p1

    const-string p0, "nf_widget_helper"

    const-string p1, "(%d, %d)(w,h), useMultipleTitles:%b"

    invoke-static {p0, p1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3
.end method

.method private static i(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 625
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oE:I

    goto :goto_0

    .line 622
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oF:I

    goto :goto_0

    .line 619
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oI:I

    :goto_0
    return p0
.end method

.method private static i(Landroid/content/Context;I)I
    .locals 6

    .line 988
    invoke-static {p0}, Lo/Ye;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-static {p0, p1}, Lo/Ye;->j(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 992
    :cond_0
    invoke-static {p0, p1}, Lo/Ye;->e(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "nf_widget_helper"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    .line 993
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "using preapp_widget_not_high %d"

    invoke-static {v1, p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 994
    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    return p0

    .line 999
    :cond_1
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1001
    invoke-static {p0, p1}, Lo/Ye;->h(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p0, v3, [Ljava/lang/Object;

    .line 1002
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eW:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "using preapp_widget_1plus2 %d"

    invoke-static {v1, p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1003
    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eW:I

    return p0

    .line 1006
    :cond_3
    invoke-static {p0, p1}, Lo/Ye;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lo/Ye;->d(I)I

    move-result v0

    .line 1007
    invoke-static {p0, p1}, Lo/Ye;->g(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_4

    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    goto :goto_1

    :cond_4
    if-le v0, p1, :cond_5

    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eR:I

    goto :goto_1

    :cond_5
    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eX:I

    :goto_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1009
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->eU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->eR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x4

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "using %d, preapp_widget_not_high=%d, preapp_horz_adjustable:%d, (widthInCell:%d) preapp_small_width:%d"

    invoke-static {v1, p1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method

.method private static j(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 641
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oC:I

    goto :goto_0

    .line 638
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oz:I

    goto :goto_0

    .line 635
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Fragment;->oB:I

    :goto_0
    return p0
.end method

.method private static j(Landroid/content/Context;I)I
    .locals 2

    .line 1015
    invoke-static {p0, p1}, Lo/Ye;->e(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lo/Ye;->g(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eS:I

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/netflix/mediaclient/ui/R$Dialog;->eO:I

    :goto_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1016
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->eS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->eO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "nf_widget_helper"

    const-string v1, "using %d, nonMember preapp_nm_small_width=%d, preapp_nm_small_height:%d"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method

.method private static k(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1262
    invoke-static {p0, v0, v1, v1, p1}, Lo/Ye;->d(Landroid/content/Context;Landroid/content/Intent;Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/content/Context;I)I
    .locals 0

    .line 1305
    invoke-static {p0}, Lo/Ye;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1306
    sget p0, Lcom/netflix/mediaclient/ui/R$Activity;->cv:I

    return p0

    :cond_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    .line 1317
    sget p0, Lcom/netflix/mediaclient/ui/R$Activity;->cv:I

    return p0

    .line 1315
    :cond_1
    sget p0, Lcom/netflix/mediaclient/ui/R$Activity;->cz:I

    return p0

    .line 1313
    :cond_2
    sget p0, Lcom/netflix/mediaclient/ui/R$Activity;->cC:I

    return p0

    .line 1311
    :cond_3
    sget p0, Lcom/netflix/mediaclient/ui/R$Activity;->cA:I

    return p0
.end method
