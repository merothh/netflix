.class public Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;
.super Landroid/widget/LinearLayout;
.source "PostPlayMetadata.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;",
            ">;"
        }
    .end annotation
.end field

.field private buttonsContainer:Landroid/widget/LinearLayout;

.field private contentLength:Landroid/widget/TextView;

.field private countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

.field private episodeBadge:Landroid/widget/TextView;

.field private logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private maturityRating:Landroid/widget/TextView;

.field private metadataBar:Landroid/widget/LinearLayout;

.field private playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private postPlayTitle:Landroid/widget/TextView;

.field private ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

.field private synopsis:Landroid/widget/TextView;

.field private titleBar:Landroid/widget/LinearLayout;

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->actions:Ljava/util/List;

    return-void
.end method

.method private findViews()V
    .locals 1

    const v0, 0x7f0f02b1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    const v0, 0x7f0f02d0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v0, 0x7f0f02d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->titleBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0f02d2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->episodeBadge:Landroid/widget/TextView;

    const v0, 0x7f0f01a3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->postPlayTitle:Landroid/widget/TextView;

    const v0, 0x7f0f02cb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->metadataBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const v0, 0x7f0f02cc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->year:Landroid/widget/TextView;

    const v0, 0x7f0f02cd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->maturityRating:Landroid/widget/TextView;

    const v0, 0x7f0f02ce

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->contentLength:Landroid/widget/TextView;

    const v0, 0x7f0f02ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->synopsis:Landroid/widget/TextView;

    const v0, 0x7f0f02cf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->buttonsContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private getContentLength(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getRuntime()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getRuntime()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "season"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "series"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSeasonsLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getEpisodes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " episodes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x3605951d -> :sswitch_1
        -0x35fe0189 -> :sswitch_2
        0x35dafd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTitle(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "episode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d3

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeasonSequenceAbbr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getEpisode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nextEpisode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recommendation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private supportsButtons(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    :sswitch_0
    const-string/jumbo v4, "nextEpisode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "episodicTeaser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb7adc78 -> :sswitch_0
        -0x387924c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateMetadataBar(Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getRating()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRatingBarDataProviderSafely(Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->year:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->year:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMaturityRating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->maturityRating:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMaturityRating()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->maturityRating:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->getContentLength(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->contentLength:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->contentLength:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->ratingBar:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->year:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->maturityRating:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->contentLength:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateTitleBar(Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->postPlayTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->getTitle(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->postPlayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->hasNewBadge()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->episodeBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->postPlayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->episodeBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->findViews()V

    return-void
.end method

.method public startTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->startTimer()V

    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->stopTimer()V

    :cond_0
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "episodicTeaser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    move v7, v6

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->buttonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->supportsButtons(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {p4, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v9, v6

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->buttonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->buttonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->setVisibility(I)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->titleBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateTitleBar(Lcom/netflix/model/leafs/PostPlayItem;)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->metadataBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateMetadataBar(Lcom/netflix/model/leafs/PostPlayItem;)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_5

    if-eqz v7, :cond_8

    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->countdown:Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;

    invoke-virtual {v0, v10}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v10}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_4
.end method
