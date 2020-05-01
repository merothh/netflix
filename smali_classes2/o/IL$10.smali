.class Lo/IL$10;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 1613
    iput-object p1, p0, Lo/IL$10;->c:Lo/IL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1619
    iget-object p1, p0, Lo/IL$10;->c:Lo/IL;

    invoke-virtual {p1}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1622
    :cond_0
    iget-object p1, p0, Lo/IL$10;->c:Lo/IL;

    invoke-virtual {p1}, Lo/IL;->c()V

    return-void
.end method
