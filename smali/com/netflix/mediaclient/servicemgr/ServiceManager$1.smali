.class Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceConnected with IBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$602(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/INetflixService;)Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$702(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$802(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$900(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$902(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$600(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/INetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$900(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->registerCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$202(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$802(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$602(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/INetflixService;)Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$302(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$102(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)I

    return-void
.end method
