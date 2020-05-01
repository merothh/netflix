.class Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# instance fields
.field private final genreId:Ljava/lang/String;

.field private final includeKubrick:Z

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toLomo:I

.field private final toVideo:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->toLomo:I

    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->toVideo:I

    iput-boolean p5, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->includeKubrick:Z

    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "topGenres"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->toLomo:I

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "topGenres"

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->genreId:Ljava/lang/String;

    aput-object v0, v1, v4

    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->toLomo:I

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v5

    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->toVideo:I

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v2

    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$PrefetchGenreLoLoMoTask;->includeKubrick:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v3

    const-string/jumbo v2, "kubrick"

    aput-object v2, v0, v4

    const-string/jumbo v2, "rating"

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string/jumbo v0, "summary"

    goto :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
