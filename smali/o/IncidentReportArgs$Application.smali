.class public final Lo/IncidentReportArgs$Application;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IncidentReportArgs;->b(Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/IncidentReportArgs;


# direct methods
.method constructor <init>(Lo/IncidentReportArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lo/IncidentReportArgs$Application;->b:Lo/IncidentReportArgs;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lo/IncidentReportArgs$Application;->b:Lo/IncidentReportArgs;

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    invoke-static {p1, v0}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;Landroid/view/ViewPropertyAnimator;)V

    .line 194
    iget-object p1, p0, Lo/IncidentReportArgs$Application;->b:Lo/IncidentReportArgs;

    invoke-virtual {p1}, Lo/IncidentReportArgs;->requestFocus()Z

    return-void
.end method
