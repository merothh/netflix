.class Lo/jj$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/jj;


# direct methods
.method constructor <init>(Lo/jj;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lo/jj$2;->a:Lo/jj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "nf_adv_id"

    const-string v0, "Received intent "

    .line 230
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    .line 233
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "onLogin"

    .line 234
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lo/jj$2;->a:Lo/jj;

    invoke-static {p1}, Lo/jj;->a(Lo/jj;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "onLogout"

    .line 237
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lo/jj$2;->a:Lo/jj;

    invoke-static {p1}, Lo/jj;->e(Lo/jj;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "onSignUp"

    .line 240
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lo/jj$2;->a:Lo/jj;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->b:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/jj;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "We do not support action %s"

    .line 243
    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
