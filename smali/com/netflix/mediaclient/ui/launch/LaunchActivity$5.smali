.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "LaunchActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

.field final synthetic val$credential:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->val$credential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
