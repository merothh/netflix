.class final Lo/CM$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/CM;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    iput-object p2, p0, Lo/CM$LoaderManager;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    check-cast v0, Lo/MessagePdu;

    .line 110
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 111
    iget-object p1, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    iget-object v0, p0, Lo/CM$LoaderManager;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/CM;->d(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    iget-object v1, p0, Lo/CM$LoaderManager;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v2, "appUpdateInfo"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lo/CM;->a(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    const/4 v1, 0x0

    check-cast v1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-static {v0, v1}, Lo/CM;->a(Lo/CM;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    .line 120
    iget-object v0, p0, Lo/CM$LoaderManager;->a:Lo/CM;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flexible update not available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    iget-object p1, p0, Lo/CM$LoaderManager;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, p1}, Lo/CM;->a(Lo/CM;Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lo/CM$LoaderManager;->c(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
