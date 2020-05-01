.class Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;
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
.field private static final IN_QUEUE_FIELD:Ljava/lang/String; = "inQueue"

.field private static final NOTIFICATIONS_LIST_FIELD:Ljava/lang/String; = "notificationsList"

.field private static final NOTIFICATION_VIDEO_FIELD:Ljava/lang/String; = "notificationVideo"

.field private static final SUMMARY_FIELD:Ljava/lang/String; = "summary"


# instance fields
.field private final fromIndex:I

.field private notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

.field private final notificationsSummaryPql:Lcom/netflix/falkor/PQL;

.field private notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

.field private oldNotificationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final skipCache:Z

.field final synthetic this$0:Lcom/netflix/falkor/CachedModelProxy;

.field private final toIndex:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 2763
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    .line 2764
    const/4 v0, 0x0

    invoke-direct {p0, p1, p5, v0}, Lcom/netflix/falkor/CachedModelProxy$CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 2765
    iput p2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->fromIndex:I

    .line 2766
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    .line 2767
    iput-boolean p4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->skipCache:Z

    .line 2770
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "notificationsList"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    .line 2773
    if-eqz p4, :cond_0

    .line 2774
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    .line 2776
    :cond_0
    return-void
.end method

.method private clearFalkorCacheOfExistingNotifications()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2856
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v5

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    iget v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    iget v4, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->fromIndex:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 2857
    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v7

    .line 2856
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 2858
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 2861
    if-eqz v0, :cond_0

    .line 2862
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2864
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 2865
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "notificationsList"

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 2866
    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-static {v3, v2}, Lcom/netflix/falkor/CachedModelProxy;->access$2500(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/PQL;)V

    .line 2864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2869
    :cond_0
    return-void
.end method

.method private notificationsListValid(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2827
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    if-nez v0, :cond_1

    move v2, v3

    .line 2845
    :cond_0
    :goto_0
    return v2

    .line 2830
    :cond_1
    if-eqz p1, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v2, v3

    .line 2835
    goto :goto_0

    .line 2839
    :cond_2
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    .line 2840
    iget-object v0, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    iget-object v0, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2843
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2844
    goto :goto_1

    :cond_3
    move v2, v3

    .line 2845
    goto :goto_0
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

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2791
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v4

    iget v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->fromIndex:I

    iget v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->toIndex:I

    .line 2792
    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "notificationVideo"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v4

    const-string/jumbo v3, "inQueue"

    aput-object v3, v2, v5

    .line 2793
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2791
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

    .line 2795
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v4

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    .line 2797
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2798
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2799
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2800
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 2817
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2818
    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 2806
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->skipCache:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2807
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->clearFalkorCacheOfExistingNotifications()V

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    .line 2811
    new-instance v2, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->this$0:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {v2, v0, v1, v3}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;-><init>(Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Ljava/util/List;Lcom/netflix/falkor/ModelProxy;)V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v2, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2813
    return-void
.end method

.method protected shouldCollapseMissingPql()Z
    .locals 1

    .prologue
    .line 2780
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 2785
    iget-boolean v0, p0, Lcom/netflix/falkor/CachedModelProxy$FetchNotificationsTask;->skipCache:Z

    return v0
.end method
