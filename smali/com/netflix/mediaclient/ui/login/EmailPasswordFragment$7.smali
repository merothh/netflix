.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "EmailPasswordFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7$1;-><init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$7;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
