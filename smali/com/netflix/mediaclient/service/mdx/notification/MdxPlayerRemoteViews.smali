.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;
.super Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.source "MdxPlayerRemoteViews.java"


# static fields
.field private static final SKIPBACK_SECONDS:I = -0x1e


# instance fields
.field private headerTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setHeaderTitle(Landroid/content/Context;)V

    return-void
.end method

.method private setHeaderTitle(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected createViewForEpisodes(Z)Landroid/widget/RemoteViews;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected setSkipActive(Landroid/widget/RemoteViews;)V
    .locals 3

    const v2, 0x7f0f0213

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201a7

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    const/16 v1, -0x1e

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setSkipInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0213

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setState(ZZ)V
    .locals 1

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mInTransition:Z

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPaused:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlAsActive(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setSkipActive(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlsAsInactive(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setSkipInactive(Landroid/widget/RemoteViews;)V

    return-void
.end method
