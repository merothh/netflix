.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;
.super Ljava/lang/Object;
.source "CoppolaDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8990 - CoppolaDetailsActivity received strange detailsFrag inside onNewIntent(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$200(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method
