.class Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;
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
.field private final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 2875
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2876
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2878
    if-nez p2, :cond_0

    .line 2879
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "MarkNotificationAsReadTask got null notification"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2881
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->notifications:Ljava/util/List;

    .line 2882
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->notifications:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2883
    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2886
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2888
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2889
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MarkNotificationAsReadTask got invalid notifications list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2891
    :cond_1
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->notifications:Ljava/util/List;

    .line 2892
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 4
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
    .line 2896
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$MarkNotificationAsReadTask;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 2898
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2900
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "notifications"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "markAsRead"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2901
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 2915
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2916
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 2

    .prologue
    .line 2910
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2911
    return-void
.end method

.method protected shouldUseCallMethod()Z
    .locals 1

    .prologue
    .line 2905
    const/4 v0, 0x1

    return v0
.end method
