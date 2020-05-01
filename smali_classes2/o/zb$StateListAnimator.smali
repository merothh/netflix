.class Lo/zb$StateListAnimator;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lo/zb;


# direct methods
.method private constructor <init>(Lo/zb;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lo/zb$StateListAnimator;->c:Lo/zb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/zb;Lo/zb$4;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lo/zb$StateListAnimator;-><init>(Lo/zb;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.HEADSET_PLUG"

    .line 265
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "nf_voip"

    if-eqz p2, :cond_0

    const-string p1, "Wired headset state changed..."

    .line 266
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lo/zb$StateListAnimator;->c:Lo/zb;

    invoke-static {p1}, Lo/zb;->b(Lo/zb;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 268
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "Bluetooth headset state changed..."

    .line 270
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lo/zb$StateListAnimator;->c:Lo/zb;

    invoke-static {p1}, Lo/zb;->b(Lo/zb;)V

    :cond_2
    :goto_0
    return-void
.end method
