.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$14;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 302
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 303
    return-void
.end method
