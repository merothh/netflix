.class public final Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IncidentReportArgs;->b(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Landroid/view/View;",
        "Landroid/view/ViewGroup;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/graphics/RectF;

.field final synthetic e:Lo/IncidentReportArgs;


# direct methods
.method public constructor <init>(Lo/IncidentReportArgs;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    iput-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->d:Landroid/graphics/RectF;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "target"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v0}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 236
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v0}, Lo/IncidentReportArgs;->b(Lo/IncidentReportArgs;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 237
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {p2}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v2}, Lo/IncidentReportArgs;->b(Lo/IncidentReportArgs;)[I

    move-result-object v2

    aget v2, v2, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    .line 238
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {p2}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object p2

    const/4 v1, 0x1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v3}, Lo/IncidentReportArgs;->b(Lo/IncidentReportArgs;)[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 241
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v2}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object v2

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 242
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v2}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object v2

    aget v2, v2, v1

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 243
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v2}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 244
    iget-object p2, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->e:Lo/IncidentReportArgs;

    invoke-static {v0}, Lo/IncidentReportArgs;->d(Lo/IncidentReportArgs;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/tooltips/TooltipContainer$readTargetBounds$1;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
