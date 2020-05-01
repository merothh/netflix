.class Lo/xP$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xP;


# direct methods
.method constructor <init>(Lo/xP;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/xP$2;->c:Lo/xP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_7

    .line 152
    invoke-static {}, Lo/ev;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v3, "nf_preappagent"

    const-string v4, "received intent %s"

    .line 157
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    invoke-static {p1}, Lo/ir;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v1, Lo/bY;

    .line 161
    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/bY;

    sget-object v4, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {v1, v4}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.netflix.mediaclient.intent.action.DEBUG_MINUSONE_FORCE_TEMPLATE"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "partner_to_Play"

    const-string v5, "partner_force_template"

    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "templateId"

    .line 169
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 173
    :cond_2
    invoke-static {p1, v5, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toPlay"

    .line 174
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 175
    invoke-static {p1, v4, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string p2, "com.netflix.mediaclient.intent.action.DEBUG_MINUSONE_CLEAR_TEMPLATE"

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 181
    invoke-static {p1, v5, p2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p1, v4, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string p1, "unknown intent, ignoring"

    .line 185
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "partner module not installed - skip "

    .line 162
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
