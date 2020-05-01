.class Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;
.super Lcom/netflix/falkor/CachedModelProxy$CmpTask;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/CachedModelProxy",
        "<TT;>.CmpTask;"
    }
.end annotation


# static fields
.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_AUDIO_LOCALE:Ljava/lang/String; = "ioal"

.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_DEVICE_DPI_CATEGORY:Ljava/lang/String; = "iodpi"

.field private static final URL_PARAM_INTERACTIVE_ORIGINALS_DEVICE_YEAR_CLASS:Ljava/lang/String; = "ioyc"


# instance fields
.field private final audioLanguage:Ljava/lang/String;

.field private final deviceDpiCategory:I

.field private final deviceYearClass:I

.field private final momentsDataPQL:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2480
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2481
    invoke-direct {p0, p1, p7, v1}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2482
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 2483
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->videoId:Ljava/lang/String;

    .line 2484
    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    .line 2485
    iput p5, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->deviceYearClass:I

    .line 2486
    iput p6, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->deviceDpiCategory:I

    .line 2488
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "interactiveMoments"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->momentsDataPQL:Lcom/netflix/falkor/PQL;

    .line 2490
    invoke-virtual {p1, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    .line 2491
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;->getInteractiveMoments()Lcom/netflix/model/leafs/InteractivePlaybackMoments;

    move-result-object v0

    .line 2493
    :goto_0
    if-eqz v0, :cond_2

    .line 2494
    invoke-virtual {v0}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    move-result-object v0

    .line 2496
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getAudioLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2497
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2498
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": Need to fetch new Interactive Video Moments for audioLanguage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_1
    invoke-static {p1, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    .line 2508
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    .line 2491
    goto :goto_0

    .line 2503
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2504
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Don\'t need to fetch new Interactive Video Moments for audioLanguage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->momentsDataPQL:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2513
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2537
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2538
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;

    .line 2532
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2533
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2517
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2519
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "iodpi"

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->deviceDpiCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2520
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "ioyc"

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->deviceYearClass:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2523
    new-instance v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v2, "ioal"

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchInteractiveVideoMomentsTask;->audioLanguage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2526
    :cond_0
    return-object v0
.end method
