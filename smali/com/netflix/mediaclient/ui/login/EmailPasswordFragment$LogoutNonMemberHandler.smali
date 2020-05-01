.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EmailPasswordFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 1

    .prologue
    .line 591
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    .line 592
    const-string/jumbo v0, "LoginBaseFragment"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 593
    return-void
.end method


# virtual methods
.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 599
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$600(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$LogoutNonMemberHandler;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$700(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string/jumbo v0, "LoginBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not log user out - status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
