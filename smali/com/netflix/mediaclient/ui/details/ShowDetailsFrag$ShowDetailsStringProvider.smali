.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;
.super Ljava/lang/Object;
.source "ShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private final details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 132
    return-void
.end method


# virtual methods
.method public getBasicInfoString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicShowInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorsText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCreators()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f08012f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCreators()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getGenresText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f080185

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getGenres()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarringText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->context:Landroid/content/Context;

    const v1, 0x7f08021b

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getActors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
