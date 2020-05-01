.class public final Lo/Yz$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;-><init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yz;

.field final synthetic c:Lo/MenuInflater$StateListAnimator;

.field final synthetic d:Lo/MenuInflater$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/Yz;Lo/MenuInflater$StateListAnimator;Lo/MenuInflater$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/Yz$StateListAnimator;->a:Lo/Yz;

    iput-object p2, p0, Lo/Yz$StateListAnimator;->d:Lo/MenuInflater$StateListAnimator;

    iput-object p3, p0, Lo/Yz$StateListAnimator;->c:Lo/MenuInflater$StateListAnimator;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 348
    iget-object p1, p0, Lo/Yz$StateListAnimator;->a:Lo/Yz;

    invoke-static {p1}, Lo/Yz;->j(Lo/Yz;)Lo/Yl;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lo/Yz$StateListAnimator;->d:Lo/MenuInflater$StateListAnimator;

    iget p3, p3, Lo/MenuInflater$StateListAnimator;->a:F

    iget-object p4, p0, Lo/Yz$StateListAnimator;->a:Lo/Yz;

    invoke-virtual {p4}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Lo/Yz$StateListAnimator;->c:Lo/MenuInflater$StateListAnimator;

    iget p4, p4, Lo/MenuInflater$StateListAnimator;->a:F

    float-to-double p4, p4

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p6, p4

    iget-object p4, p0, Lo/Yz$StateListAnimator;->a:Lo/Yz;

    invoke-virtual {p4}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-double p4, p4

    mul-double p6, p6, p4

    double-to-int p4, p6

    const/4 p5, 0x0

    invoke-direct {p2, p5, p3, p5, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Lo/Yl;->c(Landroid/graphics/Rect;)V

    return-void
.end method
