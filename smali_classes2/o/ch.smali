.class public Lo/ch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ci;


# instance fields
.field private final a:Lo/ci;

.field private final c:J


# direct methods
.method public constructor <init>(Lo/ci;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/ch;->a:Lo/ci;

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ch;->c:J

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 67
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lo/ch;->c:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    return-void
.end method


# virtual methods
.method public a(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onScenePositionFetched"

    .line 183
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->a(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onExtrasFeedItemFetched"

    .line 327
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p3}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onLoMosFetched"

    .line 89
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 1

    const-string v0, "onSearchResultsFetched"

    .line 249
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onMemberReferralFetched"

    .line 363
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onExtrasFeedFetched"

    .line 321
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p3}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onFlatGenreVideosFetched"

    .line 142
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p3}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onPrePlayVideosFetched"

    .line 131
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onPreviewsFetched"

    .line 107
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onVideoRatingSet"

    .line 231
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onKidsCharacterDetailsFetched"

    .line 189
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p3}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onShowDetailsFetched"

    .line 207
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onQueueAdd"

    .line 237
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p1}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ci;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onNotificationSummaryFetched"

    .line 273
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onCWVideosFetched"

    .line 95
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onLoLoMoPrefetched"

    .line 83
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onMovieDetailsFetched"

    .line 177
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onVideoSummaryFetched"

    .line 166
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onQueueRemove"

    .line 243
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p1}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ci;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onBBVideosFetched"

    .line 113
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onOfflineGeoPlayabilityReceived"

    .line 291
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onEpisodeDetailsFetched"

    .line 195
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onPostPlayVideosFetched"

    .line 125
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onShowDetailsAndSeasonsFetched"

    .line 213
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p3}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onVideoSharingInfoFetched"

    .line 357
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onFalkorVideoFetched"

    .line 171
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onInteractiveMomentsFetched"

    .line 333
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onInteractiveDebugMenuItemsFetched"

    .line 345
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onNotificationsListFetched"

    .line 267
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onDownloadableVideosFetched"

    .line 101
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onLoLoMoSummaryFetched"

    .line 160
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "onBooleanResponse"

    .line 315
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onSeasonsFetched"

    .line 154
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onTallPanelVideosFetched"

    .line 119
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onVideosFetched"

    .line 136
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onEpisodesFetched"

    .line 148
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onGenreListsFetched"

    .line 219
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onNotificationsMarkedAsRead"

    .line 279
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onTrackableListFetched"

    .line 255
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onBigRowVideofetched"

    .line 297
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onGenresFetched"

    .line 225
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onAdvisoriesFetched"

    .line 285
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onSimsFetched"

    .line 303
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onInteractiveDebugMenuItemsFetched"

    .line 339
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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

    const-string v0, "onDownloadedForYouFetched"

    .line 309
    invoke-direct {p0, v0}, Lo/ch;->d(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lo/ch;->a:Lo/ci;

    invoke-direct {p0, p2}, Lo/ch;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lo/ci;->s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
