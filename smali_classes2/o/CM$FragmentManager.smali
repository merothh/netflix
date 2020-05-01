.class final Lo/CM$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
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
.field final synthetic b:Lo/CM;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    iput-object p2, p0, Lo/CM$FragmentManager;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    iget-object v1, p0, Lo/CM$FragmentManager;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v2, "appUpdateInfo"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lo/CM;->a(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    iget-object v1, p0, Lo/CM$FragmentManager;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, p1}, Lo/CM;->c(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-static {p1, v0}, Lo/CM;->a(Lo/CM;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    .line 154
    iget-object p1, p0, Lo/CM$FragmentManager;->b:Lo/CM;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "refreshImmediate not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    iget-object v1, p0, Lo/CM$FragmentManager;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0, v1}, Lo/CM;->a(Lo/CM;Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lo/CM$FragmentManager;->b(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
