.class final Lo/IncidentReportArgs$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IncidentReportArgs;-><init>(Landroid/content/Context;ILandroid/view/View;Lo/alB;Lo/alB;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IncidentReportArgs;


# direct methods
.method constructor <init>(Lo/IncidentReportArgs;)V
    .locals 0

    iput-object p1, p0, Lo/IncidentReportArgs$TaskDescription;->d:Lo/IncidentReportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 103
    iget-object v0, p0, Lo/IncidentReportArgs$TaskDescription;->d:Lo/IncidentReportArgs;

    invoke-virtual {v0}, Lo/IncidentReportArgs;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lo/IncidentReportArgs$TaskDescription;->d:Lo/IncidentReportArgs;

    invoke-virtual {v0}, Lo/IncidentReportArgs;->d()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lo/IncidentReportArgs$TaskDescription;->d:Lo/IncidentReportArgs;

    invoke-static {v0}, Lo/IncidentReportArgs;->e(Lo/IncidentReportArgs;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lo/IncidentReportArgs$TaskDescription;->d:Lo/IncidentReportArgs;

    invoke-virtual {v0}, Lo/IncidentReportArgs;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method
