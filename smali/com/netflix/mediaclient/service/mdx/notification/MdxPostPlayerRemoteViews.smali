.class public Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;
.super Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.source "MdxPostPlayerRemoteViews.java"


# instance fields
.field private headerTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setHeaderTitle(Landroid/content/Context;)V

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

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPlayNextButton(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0214

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ab

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setPostplayButtons(Landroid/widget/RemoteViews;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPlayNextButton(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setStopButton(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setStopButton(Landroid/widget/RemoteViews;)V
    .locals 2

    const v1, 0x7f0f0215

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0201ad

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method protected createViewForEpisodes(Z)Landroid/widget/RemoteViews;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f0300a3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setState(ZZ)V
    .locals 0

    return-void
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPostplayButtons(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPostplayButtons(Landroid/widget/RemoteViews;)V

    return-void
.end method
