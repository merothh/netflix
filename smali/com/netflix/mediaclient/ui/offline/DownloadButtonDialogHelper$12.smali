.class final Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$12;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 281
    return-void
.end method
