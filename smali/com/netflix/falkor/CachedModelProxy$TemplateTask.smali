.class Lcom/netflix/falkor/CachedModelProxy$TemplateTask;
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
.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 3708
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$TemplateTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 3709
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 3710
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 0
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
    .line 3714
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 3722
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 0

    .prologue
    .line 3718
    return-void
.end method
