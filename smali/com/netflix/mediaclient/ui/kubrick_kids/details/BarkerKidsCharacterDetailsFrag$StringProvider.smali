.class public Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;
.super Ljava/lang/Object;
.source "BarkerKidsCharacterDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private final details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->context:Landroid/content/Context;

    .line 486
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 487
    return-void
.end method


# virtual methods
.method public getBasicInfoString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicMovieInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorsText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenresText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->context:Landroid/content/Context;

    const v1, 0x7f080185

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getGenres()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarringText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->context:Landroid/content/Context;

    const v1, 0x7f08021b

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getActors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
