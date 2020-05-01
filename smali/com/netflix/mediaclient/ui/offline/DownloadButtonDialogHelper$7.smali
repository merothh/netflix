.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$7;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    return-void
.end method
