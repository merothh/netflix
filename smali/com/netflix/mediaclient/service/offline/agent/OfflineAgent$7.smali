.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$7;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getRealmInstance()Lio/realm/Realm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1502(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lio/realm/Realm;)Lio/realm/Realm;

    return-void
.end method
