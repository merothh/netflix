.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;
.super Ljava/lang/Object;
.source "RealmUtils.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 5

    const/4 v1, 0x1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10597: videoRecord to delete is null (playableId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_3

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "playable.parentId"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "videoType"

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->deleteVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "parentId"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    :cond_1
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v2, "playable.playableId"

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "playableId"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->deleteVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$2;->val$playableId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
