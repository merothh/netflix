.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$deleteClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;->val$deleteClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;->val$deleteClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method
