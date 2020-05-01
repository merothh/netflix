.class final Lo/CM$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
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

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CM$StateListAnimator;->a:Lo/CM;

    iput-object p2, p0, Lo/CM$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lo/CM$StateListAnimator;->a:Lo/CM;

    check-cast v0, Lo/MessagePdu;

    .line 252
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 253
    iget-object p1, p0, Lo/CM$StateListAnimator;->a:Lo/CM;

    iget-object v0, p0, Lo/CM$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/CM;->d(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 255
    :cond_0
    iget-object p1, p0, Lo/CM$StateListAnimator;->a:Lo/CM;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lo/CM$StateListAnimator;->a(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
