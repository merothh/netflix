.class public Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"


# static fields
.field public static final PREAPP_MAX_LISTS:I = 0x6

.field public static final PREAPP_MAX_NON_MEMBER_VIDEOS:I = 0xc

.field public static final PREAPP_MAX_VIDEOS_IN_LIST:I = 0x6

.field private static final TAG:Ljava/lang/String; = "nf_preappagentdatahandler"

.field private static final TO_FETCH_FROM_CACHE_ONLY:Z

.field private static mContext:Landroid/content/Context;

.field private static mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->copyBBListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->proceedAfterFetchOfLists(Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/netflix/mediaclient/service/ServiceAgent;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->proceedToStoreAndNotify(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->notifyOthers(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->copyCWListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->copyListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->copyListInfoIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchLists(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V

    return-void
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mergeData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->clearOldImages(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->proceedToFetchOfImages(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method

.method private clearOldImage(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$13;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method private clearOldImages(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInAnyList(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_preappagentdatahandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearImagesNotPresentInNewList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->clearOldImage(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private collectFetchCallbacks(Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ">;",
            "Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isBBUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isCWUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isIQUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isFirstStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isSecondStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isNonMemberListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private copyBBListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    new-instance v3, Lcom/netflix/mediaclient/service/pservice/PVideo;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/pservice/PVideo;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyCWListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    new-instance v3, Lcom/netflix/mediaclient/service/pservice/PVideo;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/pservice/PVideo;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyListInfoIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->isRegularLomoForPreApp(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->isRegularLomoForPreApp(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private copyListIntoDiskData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    new-instance v3, Lcom/netflix/mediaclient/service/pservice/PVideo;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/pservice/PVideo;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private static createIntentToPService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_AGENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private fetchLists(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isBBUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3, v2, p2}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchBillboards(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isCWUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3, v2, p2}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchCW(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isIQUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v3, v2, p3}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchIQ(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isFirstStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v2, v3, v2, p4}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchRecommendedList(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isSecondStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v4, v3, v2, p5}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchRecommendedList(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_4
    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isNonMemberListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    invoke-interface {v0, v1, v4, p6}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    :cond_5
    return-void
.end method

.method private fetchUrl(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$9;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "video.id: %s, url is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_2
    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :goto_2
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "nf_preappagentdatahandler"

    const-string/jumbo v4, "%s(%s), url:%s exists in urlMap - skip"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "nf_preappagentdatahandler"

    const-string/jumbo v4, "%s(%s), url:%s exists in urlMap - skip"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "nf_preappagentdatahandler"

    const-string/jumbo v4, "%s(%s), url:%s exists in urlMap - skip"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v0, v5, v7

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v0, v5, v8

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-eqz p3, :cond_4

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private getUrlFetchCount(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isBBUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isCWUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isIQUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isFirstStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isSecondStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isNonMemberListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getListUrlFetchCount(Ljava/util/List;Ljava/util/Map;Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isUrlPresentInAnyList(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUrlPresentInList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isWorthWakingPService()Z
    .locals 4

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PService;->isRemoteUiDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_preappagentdatahandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWorthWakingPService toWakeUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromDisk(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private mergeData(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "mergeData updateType:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$15;->$SwitchMap$com$netflix$mediaclient$service$preapp$PreAppAgentEventType:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_preappagentdatahandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called merge data for unexpected update type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    :goto_1
    const-string/jumbo v1, "nf_preappagentdatahandler"

    const-string/jumbo v2, "merged data:"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    move-object p1, v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    iget-object v1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyOthers(Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 3

    const-string/jumbo v0, "nf_preappagentdatahandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOthers updateType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$15;->$SwitchMap$com$netflix$mediaclient$service$preapp$PreAppAgentEventType:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "nf_preappagentdatahandler"

    const-string/jumbo v2, "unknown event type received"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CW_UPDATED_FROM_PREAPP_AGENT"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.IQ_UPDATED_FROM_PREAPP_AGENT"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NON_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ACTION_ACCOUNT_DEACTIVATED_FROM_PREAPP_AGENT"

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->notifyPService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private notifyPService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isWorthWakingPService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->createIntentToPService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_preappagentdatahandler"

    const-string/jumbo v2, "sending intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static notifyPServiceOfPlayState(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->isWorthWakingPService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ACTION_PLAYER_STATE_CHANGE"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->createIntentToPService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isPlayerPaused"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "videoId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_preappagentdatahandler"

    const-string/jumbo v2, "sending intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private proceedAfterFetchOfLists(Ljava/util/Set;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            "Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "waiting for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "lists/videos fetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->proceedToLoadFromDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0
.end method

.method private proceedToFetchOfImages(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->getUrlFetchCount(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)I

    move-result v0

    new-instance v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$8;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;ILcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    const-string/jumbo v2, "nf_preappagentdatahandler"

    const-string/jumbo v3, "urlFetchCount=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_1

    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "no images to fetch - store newData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->proceedToStoreAndNotify(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isBBUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isCWUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isIQUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_4
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isFirstStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_5
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isSecondStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    :cond_6
    invoke-static {p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->isNonMemberListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchUrlsOfList(Ljava/util/List;Ljava/util/Map;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;)V

    goto :goto_0
.end method

.method private proceedToLoadFromDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$7;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->loadFromDisk(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    return-void
.end method

.method private proceedToStoreAndNotify(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "newData is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setExperienceType(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "default"

    :cond_0
    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppPartnerExperience:Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "default"

    :cond_1
    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppWidgetExperience:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->shouldClearData(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_preappagentdatahandler"

    const-string/jumbo v1, "skip clearing data - invalid updateType= %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$14;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->loadFromDisk(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 10

    new-instance v2, Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->setExperienceType(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    invoke-direct {p0, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->collectFetchCallbacks(Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v5, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;

    invoke-direct {v5, p0, v2, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$1;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v6, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$2;

    invoke-direct {v6, p0, v2, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$2;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v7, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$3;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$3;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v8, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$4;

    invoke-direct {v8, p0, v2, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$4;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v9, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;

    invoke-direct {v9, p0, v2, v3, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$5;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$6;-><init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->fetchLists(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->mServiceAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/ServiceAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
