.class public final Lo/IncidentReportArgs$Activity;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IncidentReportArgs;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IncidentReportArgs;


# direct methods
.method constructor <init>(Lo/IncidentReportArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lo/IncidentReportArgs$Activity;->d:Lo/IncidentReportArgs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lo/IncidentReportArgs$Activity;->d:Lo/IncidentReportArgs;

    invoke-static {p1}, Lo/IncidentReportArgs;->a(Lo/IncidentReportArgs;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/IncidentReportArgs$Activity;->d:Lo/IncidentReportArgs;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_0
    iget-object p1, p0, Lo/IncidentReportArgs$Activity;->d:Lo/IncidentReportArgs;

    invoke-virtual {p1}, Lo/IncidentReportArgs;->a()Lo/alB;

    move-result-object p1

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method
