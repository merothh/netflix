.class public abstract Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.super Ljava/lang/Object;
.source "MdxRemoteViews.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxnotification"


# instance fields
.field protected mBoxart:Landroid/graphics/Bitmap;

.field protected mExpandedRemoteView:Landroid/widget/RemoteViews;

.field protected mInTransition:Z

.field protected final mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

.field protected mIsEpisode:Z

.field protected mMainTitle:Ljava/lang/String;

.field protected mNormalRemoteView:Landroid/widget/RemoteViews;

.field protected final mPackageName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mSubTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    return-void
.end method

.method private createRemoteView(Z)Landroid/widget/RemoteViews;
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createViewForEpisodes(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createViewsForMovies(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private createViewsForMovies(Z)Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateBoxart(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0f0210

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateTitles(Landroid/widget/RemoteViews;)V
    .locals 4

    const v3, 0x7f0f0217

    const v2, 0x7f0f0212

    const v1, 0x7f0f0211

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createViewForEpisodes(Z)Landroid/widget/RemoteViews;
.end method

.method protected abstract getHeader()Ljava/lang/String;
.end method

.method public getRemoteView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getRemoteViewBigContetnt()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "MdxRemoteViewManager:setBoxart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected setPauseActive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPauseInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201aa

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayActiveWithGetNext(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ab

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayActiveWithResume(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ab

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ac

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public abstract setState(ZZ)V
.end method

.method protected setStopActive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0215

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ad

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setStopInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0215

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ae

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setTitles(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    :cond_2
    return-void
.end method

.method protected updateControl(Landroid/widget/RemoteViews;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mInTransition:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlAsActive(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlsAsInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setStopActive(Landroid/widget/RemoteViews;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPaused:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPlayActiveWithResume(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPauseActive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setStopInactive(Landroid/widget/RemoteViews;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPaused:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPlayInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPauseInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
