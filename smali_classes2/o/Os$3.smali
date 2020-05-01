.class Lo/Os$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Os;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

.field final synthetic c:Lo/Os;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method constructor <init>(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lo/Os$3;->c:Lo/Os;

    iput-object p2, p0, Lo/Os$3;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/Os$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p4, p0, Lo/Os$3;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lo/Os$3;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 573
    iget-object p1, p0, Lo/Os$3;->d:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-16126 Empty videoID"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 577
    :cond_0
    iget-object p1, p0, Lo/Os$3;->c:Lo/Os;

    iget-object v0, p0, Lo/Os$3;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/Os$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v2, p0, Lo/Os$3;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {p1, v0, v1, v2}, Lo/Os;->d(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 579
    iget-object p1, p0, Lo/Os$3;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 580
    iget-object p1, p0, Lo/Os$3;->c:Lo/Os;

    iget-object v0, p0, Lo/Os$3;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    invoke-static {p1, v0, v1}, Lo/Os;->c(Lo/Os;Ljava/lang/String;Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NotificationsFrag"

    aput-object v2, v0, v1

    const-string v1, "%s: Clv2 error - urlTarget null"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
