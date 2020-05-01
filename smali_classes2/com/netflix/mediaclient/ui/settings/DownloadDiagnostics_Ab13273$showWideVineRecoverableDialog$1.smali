.class public final Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaQ;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/SY$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/aaQ;


# direct methods
.method public constructor <init>(Lo/aaQ;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->e:Lo/aaQ;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/SY$TaskDescription;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->e:Lo/aaQ;

    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Lo/SY$TaskDescription;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lo/SY$TaskDescription;->c()Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->e:Lo/aaQ;

    invoke-static {v2}, Lo/aaQ;->c(Lo/aaQ;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 79
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1$3;-><init>(Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v1, "AlertDialog.Builder(acti\u2026                .create()"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {v0, p1}, Lo/aaQ;->c(Lo/aaQ;Landroid/app/AlertDialog;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lo/SY$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;->b(Lo/SY$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
