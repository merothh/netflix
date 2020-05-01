.class public final Lo/LS$Application;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/LS;


# direct methods
.method constructor <init>(Lo/LS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/LS$Application;->d:Lo/LS;

    iput-object p2, p0, Lo/LS$Application;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lo/LS$Application;->d:Lo/LS;

    invoke-static {p1}, Lo/LS;->d(Lo/LS;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    sget-object p1, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x40c5d1d7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    const v0, 0x62ca26e8

    if-eq p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 61
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string p2, "BaseNetflixApp.getInstance()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    invoke-virtual {p1}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 62
    invoke-interface {p1}, Lo/zN;->i()I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 63
    :goto_1
    sget-object p2, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 64
    iget-object p2, p0, Lo/LS$Application;->d:Lo/LS;

    if-lez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {p2, v1}, Lo/LS;->e(Lo/LS;Z)V

    if-nez p1, :cond_8

    .line 67
    iget-object p1, p0, Lo/LS$Application;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/Mn;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_3

    :cond_6
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 71
    sget-object p1, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 72
    iget-object p1, p0, Lo/LS$Application;->d:Lo/LS;

    invoke-static {p1, v1}, Lo/LS;->e(Lo/LS;Z)V

    goto :goto_3

    .line 75
    :cond_7
    :goto_2
    sget-object p1, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_8
    :goto_3
    return-void
.end method
