.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;
.super Ljava/lang/Object;
.source "MovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicInfoString()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicMovieInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorsText()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getDirectors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getNumDirectors()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getDirectors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getGenresText()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080185

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getGenres()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarringText()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08021b

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$6;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getActors()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
