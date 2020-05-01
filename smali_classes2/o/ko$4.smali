.class Lo/ko$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ko;


# direct methods
.method constructor <init>(Lo/ko;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lo/ko$4;->a:Lo/ko;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MdxAgent"

    if-nez p2, :cond_0

    const-string p2, "Null intent"

    .line 1462
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Lo/ko$4;->a:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "mUserAgentReceiver MdxAgent not ready, ignoring"

    .line 1466
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1469
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 1471
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "user profile is active"

    .line 1472
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object p1, p0, Lo/ko$4;->a:Lo/ko;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/ko;->a(Lo/ko;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 1475
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "user profile is not active"

    .line 1476
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object p1, p0, Lo/ko$4;->a:Lo/ko;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/ko;->a(Lo/ko;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    .line 1479
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1480
    iget-object p2, p0, Lo/ko$4;->a:Lo/ko;

    invoke-virtual {p2}, Lo/ko;->o()V

    const-string p2, "user account is activated"

    .line 1481
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 1483
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1484
    iget-object p2, p0, Lo/ko$4;->a:Lo/ko;

    invoke-static {p2}, Lo/ko;->A(Lo/ko;)V

    const-string p2, "user account is deactivated"

    .line 1485
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
