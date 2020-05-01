.class Lo/Os$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Os;


# direct methods
.method constructor <init>(Lo/Os;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lo/Os$1;->a:Lo/Os;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 900
    iget-object p1, p0, Lo/Os$1;->a:Lo/Os;

    const-string v0, "NotificationsFrag"

    invoke-static {p2, v0}, Lo/adK;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    move-result-object p2

    iput-object p2, p1, Lo/Os;->i:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    .line 903
    iget-object p1, p0, Lo/Os$1;->a:Lo/Os;

    iget-object p1, p1, Lo/Os;->h:Lo/RadioGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/Os$1;->a:Lo/Os;

    iget-object p1, p1, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {p1}, Lo/RadioGroup;->getFirstVisiblePosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 904
    iget-object p1, p0, Lo/Os$1;->a:Lo/Os;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/Os;->b(Lo/Os;Z)V

    goto :goto_0

    .line 907
    :cond_0
    iget-object p1, p0, Lo/Os$1;->a:Lo/Os;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/Os;->d(Lo/Os;Z)Z

    :goto_0
    return-void
.end method
