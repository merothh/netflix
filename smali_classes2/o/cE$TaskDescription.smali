.class public final Lo/cE$TaskDescription;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/cE;


# direct methods
.method public constructor <init>(Lo/cE;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/cE$TaskDescription;->b:Lo/cE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    .line 137
    invoke-static {}, Lo/cE;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dropping null intent"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {}, Lo/cE;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "ChannelId receiver invoked and received Intent with Action %s"

    invoke-static {v0, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "com.netflix.partner.activation.intent.action.CHANNEL_ID_RESPONSE"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    invoke-static {}, Lo/cE;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dropping intent! wrong action"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "channelId"

    .line 149
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 152
    iget-object p2, p0, Lo/cE$TaskDescription;->b:Lo/cE;

    invoke-static {p2}, Lo/cE;->e(Lo/cE;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 153
    invoke-static {}, Lo/cE;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignoring channelId intent - already got"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_2
    iget-object p2, p0, Lo/cE$TaskDescription;->b:Lo/cE;

    invoke-static {p2}, Lo/cE;->b(Lo/cE;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "channelIdValue"

    invoke-static {p2, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lo/cE$TaskDescription;->b:Lo/cE;

    invoke-virtual {p1}, Lo/cE;->b()V

    .line 159
    invoke-static {}, Lo/cE;->e()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lo/cE$TaskDescription;->b:Lo/cE;

    invoke-static {v0}, Lo/cE;->e(Lo/cE;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "Got channelId : %s"

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    return-void
.end method
