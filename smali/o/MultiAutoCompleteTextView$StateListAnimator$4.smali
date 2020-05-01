.class Lo/MultiAutoCompleteTextView$StateListAnimator$4;
.super Lo/Yd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MultiAutoCompleteTextView$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/MultiAutoCompleteTextView$StateListAnimator;


# direct methods
.method constructor <init>(Lo/MultiAutoCompleteTextView$StateListAnimator;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-direct {p0}, Lo/Yd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 544
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-static {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->a(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-static {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->a(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    return-object p1

    .line 547
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "getTrackinInfo(): trackingInfoHolder shouldn\'t be null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lo/Av;
    .locals 1

    .line 554
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->a()Lo/AR;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 2

    .line 560
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_0
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    iget-object v1, v1, Lo/MultiAutoCompleteTextView$StateListAnimator;->b:Lo/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 538
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    iget-object v0, v0, Lo/MultiAutoCompleteTextView$StateListAnimator;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public e()Lo/Bv;
    .locals 1

    .line 576
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    iget-object v0, v0, Lo/MultiAutoCompleteTextView$StateListAnimator;->b:Lo/MultiAutoCompleteTextView;

    invoke-static {v0}, Lo/MultiAutoCompleteTextView;->a(Lo/MultiAutoCompleteTextView;)Lo/Bv;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 581
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator$4;->a:Lo/MultiAutoCompleteTextView$StateListAnimator;

    iget-object v0, v0, Lo/MultiAutoCompleteTextView$StateListAnimator;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    instance-of v2, v0, Lo/DM;

    if-eqz v2, :cond_0

    .line 583
    check-cast v0, Lo/DM;

    invoke-interface {v0}, Lo/DM;->i()Z

    move-result v0

    return v0

    .line 584
    :cond_0
    instance-of v2, v0, Lo/Ly$Activity;

    if-eqz v2, :cond_1

    .line 585
    check-cast v0, Lo/Ly$Activity;

    invoke-interface {v0}, Lo/Ly$Activity;->m()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
