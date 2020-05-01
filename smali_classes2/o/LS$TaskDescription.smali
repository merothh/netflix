.class public final Lo/LS$TaskDescription;
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
.field final synthetic a:Lo/LS;


# direct methods
.method constructor <init>(Lo/LS;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lo/LS$TaskDescription;->a:Lo/LS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 39
    iget-object p1, p0, Lo/LS$TaskDescription;->a:Lo/LS;

    const/4 v0, 0x0

    const-string v1, "isVisible"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lo/LS;->c(Lo/LS;Z)V

    .line 40
    sget-object p1, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 41
    iget-object p1, p0, Lo/LS$TaskDescription;->a:Lo/LS;

    invoke-static {p1}, Lo/LS;->d(Lo/LS;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lo/LS$TaskDescription;->a:Lo/LS;

    invoke-static {p1, v0}, Lo/LS;->e(Lo/LS;Z)V

    goto :goto_2

    .line 44
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string p2, "BaseNetflixApp.getInstance()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    invoke-virtual {p1}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    invoke-interface {p1}, Lo/zN;->i()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 46
    :goto_1
    sget-object p2, Lo/LS;->c:Lo/LS$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 47
    iget-object p2, p0, Lo/LS$TaskDescription;->a:Lo/LS;

    invoke-virtual {p2}, Lo/LS;->d()Lo/LQ;

    move-result-object p2

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p2, v0}, Lo/LQ;->c(Z)V

    :cond_4
    :goto_2
    return-void
.end method
