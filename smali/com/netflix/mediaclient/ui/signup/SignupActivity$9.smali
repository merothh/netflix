.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
