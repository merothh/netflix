.class Lcom/netflix/mediaclient/ui/login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/LoginActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManagerReady status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LoginActivity;)Landroid/app/Fragment;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    .line 192
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 194
    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/LoginActivity$1;->this$0:Lcom/netflix/mediaclient/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->access$000(Lcom/netflix/mediaclient/ui/login/LoginActivity;)Landroid/app/Fragment;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 203
    :cond_0
    return-void
.end method
