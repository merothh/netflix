.class Lo/hX$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ci;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic c:Lo/hX;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lo/hX;II)V
    .locals 0

    .line 747
    iput-object p1, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput p2, p0, Lo/hX$TaskDescription;->e:I

    .line 749
    iput p3, p0, Lo/hX$TaskDescription;->d:I

    return-void
.end method


# virtual methods
.method public a(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1132
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onScenePositionFetched"

    .line 1134
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1165
    iget-object p2, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {p2}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object p2

    iget v0, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {p2, v0}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/zK;

    if-nez p2, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onExtrasFeedItemFetched"

    .line 1167
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1170
    :cond_0
    iget v0, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {p2, v0, p1, p3}, Lo/zK;->onExtrasFeedItemFetched(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onLoMosFetched"

    .line 768
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    .line 1060
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onSearchResultsFetched"

    .line 1062
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1065
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onSearchResultsFetched(ILo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1260
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onMemberReferralDetailsFetched"

    .line 1262
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onMemberReferralFetched(ILcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onExtrasFeedFetched"

    .line 1156
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onExtrasFeedFetched(ILcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onFlatGenreVideosFetched"

    .line 801
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onFlatGenreVideosFetched(ILcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 937
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onPostPlayVideosFetched"

    .line 939
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 941
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onPrePlayExperienceFetched(ILcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onPreviewsFetched"

    .line 906
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onPreviewsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1016
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onVideoRatingSet"

    .line 1018
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onVideoRatingSet(ILo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 850
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onKidsCharacterDetailsFetched"

    .line 852
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onKidsCharacterDetailsFetched(ILo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 971
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onShowDetailsFetched"

    .line 973
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onShowDetailsFetched(ILo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1027
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string v0, "No client callback found for onQueueAdd"

    .line 1029
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1092
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onNotificationSummaryFetched"

    .line 1094
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onNotificationSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onCWVideosFetched"

    .line 884
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 754
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for client onLoLoMoPrefetched"

    .line 756
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onLoLoMoPrefetched(ILo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 840
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onMovieDetailsFetched"

    .line 842
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onMovieDetailsFetched(ILo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 820
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onVideoSummaryFetched"

    .line 822
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 824
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onVideoSummaryFetched(ILo/AR;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1038
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string v0, "No client callback found for onQueueRemove"

    .line 1040
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1043
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1}, Lo/zK;->onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for oBBVideosFetched"

    .line 917
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 920
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 860
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onEpisodeDetailsFetched"

    .line 862
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onEpisodeDetailsFetched(ILo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 926
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onPostPlayVideosFetched"

    .line 928
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onPostPlayVideosFetched(ILo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onShowDetailsAndSeasonsFetched"

    .line 984
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onShowDetailsAndSeasonsFetched(ILo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1250
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onVideoSharingInfoFetched"

    .line 1252
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onVideoSharingInfoFetched(ILo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 830
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onFalkorVideoFetched"

    .line 832
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onFalkorVideoFetched(ILo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1187
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onInteractiveMomentsFetched"

    .line 1189
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1192
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onInteractiveMomentsFetched(ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1209
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onInteractiveMomentsFetched"

    .line 1211
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onInteractiveResetStateFetched(ILcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1082
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onNotificationsListFetched"

    .line 1084
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onNotificationsListFetched(ILcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AB;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onDownloadableVideosFetched"

    .line 895
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 898
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onDownloadableVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 809
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onLoLoMoSummaryFetched"

    .line 811
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onLoLoMoSummaryFetched(ILo/AI;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1230
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onBooleanResponse"

    .line 1232
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1234
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onBooleanResponse(IZLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onSeasonsFetched"

    .line 962
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onTallPanelVideosFetched"

    .line 790
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 793
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onTallPanelVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onVideosFetched"

    .line 779
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onEpisodesFetched"

    .line 950
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 953
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onGenreListsFetched"

    .line 996
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    .line 1104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationsMarkedAsRead: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FalkorAccess"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1106
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onNotificationsMarkedAsRead(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bv;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onTrackableListFetched"

    .line 1073
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1076
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onTrackableListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onAdvisoriesFetched"

    .line 1123
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onBigRowVideoFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onGenresFetched"

    .line 1007
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onAdvisoriesFetched"

    .line 1145
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1148
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/agg;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onTrailersFetched"

    .line 1178
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1181
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onSimsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onInteractiveMomentsFetched"

    .line 1200
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1203
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onInteractiveDebugMenuItemsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lo/hX$TaskDescription;->c:Lo/hX;

    invoke-static {v0}, Lo/hX;->b(Lo/hX;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/hX$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "FalkorAccess"

    const-string p2, "No client callback found for onDownloadedForYouFetched"

    .line 1222
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :cond_0
    iget v1, p0, Lo/hX$TaskDescription;->d:I

    invoke-interface {v0, v1, p1, p2}, Lo/zK;->onDownloadedForYouFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
