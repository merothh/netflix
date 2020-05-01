.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "animator"

    .line 117
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->p(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)[I

    move-result-object v0

    .line 637
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget v4, v0, v3

    .line 121
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->mO:I

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->r(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)I

    move-result v5

    if-eq v5, v6, :cond_1

    :cond_0
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->mR:I

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->s(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)I

    move-result v5

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_6

    .line 124
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    :cond_3
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    int-to-float v5, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ne v5, v7, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->q(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->b()Lo/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 135
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, -0x1

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v0}, Lo/GridLayout;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$TaskDescription;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "audioToggle.layoutParams"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTranslationY(F)V

    :cond_8
    return-void

    .line 117
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
