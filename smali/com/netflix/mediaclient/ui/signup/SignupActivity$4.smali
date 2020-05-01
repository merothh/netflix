.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "User tapped sign-in button"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$302(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportLoginActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    return v3
.end method
