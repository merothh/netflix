.class public final Lo/Ja$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ja;->a(Lo/Ja$Application;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ja$Application;


# direct methods
.method public constructor <init>(Lo/Ja$Application;)V
    .locals 0

    iput-object p1, p0, Lo/Ja$Activity;->c:Lo/Ja$Application;

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

    .line 350
    iget-object p1, p0, Lo/Ja$Activity;->c:Lo/Ja$Application;

    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "view.mainImageView.context"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p2

    .line 352
    invoke-static {p1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 353
    invoke-static {p1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p1

    int-to-double p3, p1

    const-wide p5, 0x3fe6666666666666L    # 0.7

    mul-double p3, p3, p5

    double-to-int p1, p3

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    const/high16 p3, 0x3f100000    # 0.5625f

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 357
    :goto_0
    iget-object p3, p0, Lo/Ja$Activity;->c:Lo/Ja$Application;

    invoke-virtual {p3}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p3

    invoke-virtual {p3}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 358
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
