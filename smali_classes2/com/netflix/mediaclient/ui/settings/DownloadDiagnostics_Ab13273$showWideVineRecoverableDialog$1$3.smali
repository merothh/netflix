.class final Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->b(Lo/SY$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;->b:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 80
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;->b:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;->b:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lo/adU;->c(Landroid/content/Context;)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;->b:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/content/Context;

    const-string v0, "download diagnostics"

    invoke-virtual {p1, p2, v0}, Lo/CarrierIdentifier;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
