.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;
.super Ljava/lang/Object;
.source "BarkerKidsDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->registerLoadingStatusCallback()V

    .line 100
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 105
    return-void
.end method
