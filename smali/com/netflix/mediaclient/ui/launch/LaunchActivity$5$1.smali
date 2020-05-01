.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5$1;->this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->val$credential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$900(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method
