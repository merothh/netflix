.class final Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;->b(Lo/SY$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1$5;->e:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 61
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1$5;->e:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;->d:Lo/aaV;

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1$5;->e:Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;->d:Lo/aaV;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/RL;->a(ILcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
