.class Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;
.super Ljava/lang/Object;
.source "OfflineErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$300(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;->access$400(Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog;)Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog$DeleteAndTryAgainHelper;->retry()V

    .line 144
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    return-void

    .line 141
    :cond_1
    const v1, 0x7f08026d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
