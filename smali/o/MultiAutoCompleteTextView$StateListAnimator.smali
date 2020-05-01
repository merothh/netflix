.class Lo/MultiAutoCompleteTextView$StateListAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Lo/Yd;

.field final synthetic b:Lo/MultiAutoCompleteTextView;

.field private d:Lo/AR;

.field private e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lo/MultiAutoCompleteTextView;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->b:Lo/MultiAutoCompleteTextView;

    .line 598
    invoke-static {p1, p3}, Lo/MultiAutoCompleteTextView;->e(Lo/MultiAutoCompleteTextView;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 533
    new-instance p1, Lo/MultiAutoCompleteTextView$StateListAnimator$4;

    invoke-direct {p1, p0}, Lo/MultiAutoCompleteTextView$StateListAnimator$4;-><init>(Lo/MultiAutoCompleteTextView$StateListAnimator;)V

    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->a:Lo/Yd;

    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz p2, :cond_0

    .line 604
    iget-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 605
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 0

    .line 531
    iget-object p0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object p0
.end method

.method static synthetic b(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lo/Yd;
    .locals 0

    .line 531
    iget-object p0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->a:Lo/Yd;

    return-object p0
.end method


# virtual methods
.method public a()Lo/AR;
    .locals 1

    .line 636
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->d:Lo/AR;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public c(Lo/AR;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->d:Lo/AR;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 617
    instance-of v0, p1, Lo/DM;

    if-eqz v0, :cond_0

    .line 618
    check-cast p1, Lo/DM;

    invoke-interface {p1}, Lo/DM;->d()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object p1, p0, Lo/MultiAutoCompleteTextView$StateListAnimator;->b:Lo/MultiAutoCompleteTextView;

    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/MultiAutoCompleteTextView;->h(I)V

    return-void
.end method
