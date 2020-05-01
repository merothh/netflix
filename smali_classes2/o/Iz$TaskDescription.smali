.class final Lo/Iz$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Iz;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/IncidentReportArgs;

.field final synthetic e:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lo/IncidentReportArgs;)V
    .locals 0

    iput-object p1, p0, Lo/Iz$TaskDescription;->e:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iput-object p2, p0, Lo/Iz$TaskDescription;->b:Lo/IncidentReportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    iget-object p1, p0, Lo/Iz$TaskDescription;->e:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    iget-object v1, p0, Lo/Iz$TaskDescription;->e:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/QU$TaskDescription;->d(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object p1, p0, Lo/Iz$TaskDescription;->b:Lo/IncidentReportArgs;

    invoke-virtual {p1}, Lo/IncidentReportArgs;->d()V

    return-void
.end method
