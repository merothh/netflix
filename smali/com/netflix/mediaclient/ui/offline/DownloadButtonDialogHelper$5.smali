.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    return-void
.end method
