.class abstract Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;
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
.field private final lolomoId:Ljava/lang/String;

.field protected final lomoId:Ljava/lang/String;

.field protected final lomoIndex:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3491
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 3492
    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 3494
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->lolomoId:Ljava/lang/String;

    .line 3495
    iput-object p3, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->lomoId:Ljava/lang/String;

    .line 3496
    iput-object p4, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->lomoIndex:Ljava/lang/String;

    .line 3497
    return-void
.end method

.method private doDebugValidation()V
    .locals 0

    .prologue
    .line 3512
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 3
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
    .line 3501
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->doDebugValidation()V

    .line 3502
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "lolomos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->lolomoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "refreshList"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3503
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 3542
    const-string/jumbo v0, "CachedModelProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RefreshLomoTask finished onFailure statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->notifyOfRefresh()V

    .line 3544
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 3536
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "RefreshLomoTask finished onSuccess"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy$RefreshLomoTask;->notifyOfRefresh()V

    .line 3538
    return-void
.end method

.method protected notifyOfRefresh()V
    .locals 0

    .prologue
    .line 3551
    return-void
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 3507
    const/4 v0, 0x1

    return v0
.end method
