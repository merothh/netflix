.class Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source "PreReleaseDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreReleaseVideoDetailsViewGroup"


# instance fields
.field private playButton:Landroid/widget/Button;

.field private supplementalMessage:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    .line 153
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    return-object v0
.end method

.method private fetchSupplementalVideos(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    const-string/jumbo v0, "PreReleaseVideoDetailsViewGroup"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    .line 190
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    iget-wide v4, v3, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->requestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;J)V

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private updateSupplementalMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->isSupplementalMessageAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    .line 164
    const v0, 0x7f0f0395

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    .line 165
    const v0, 0x7f0f0392

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->supplementalMessage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setLayoutDirection(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f030119

    return v0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 172
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasTrailers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getDefaultTrailer()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->fetchSupplementalVideos(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->playButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag$PreReleaseVideoDetailsViewGroup;->updateSupplementalMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 233
    return-void
.end method
