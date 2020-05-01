.class public abstract Lo/MultiAutoCompleteTextView;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MultiAutoCompleteTextView$StateListAnimator;,
        Lo/MultiAutoCompleteTextView$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lo/Bb;

.field protected b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lo/Bv;

.field private h:Lo/MultiAutoCompleteTextView$Application;

.field private i:Landroid/view/View;

.field private j:Z

.field private l:Z

.field private m:I

.field private o:I


# direct methods
.method public constructor <init>(Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lo/MultiAutoCompleteTextView;->e:I

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lo/MultiAutoCompleteTextView;->j:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lo/MultiAutoCompleteTextView;->f:I

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lo/MultiAutoCompleteTextView;->l:Z

    .line 330
    iput v0, p0, Lo/MultiAutoCompleteTextView;->m:I

    .line 353
    iput v0, p0, Lo/MultiAutoCompleteTextView;->o:I

    .line 92
    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->h:Lo/MultiAutoCompleteTextView$Application;

    .line 93
    new-instance p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method static synthetic a(Lo/MultiAutoCompleteTextView;)Lo/Bv;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/MultiAutoCompleteTextView;->g:Lo/Bv;

    return-object p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 208
    iget-object p1, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 1

    .line 174
    invoke-direct {p0, p1, p2}, Lo/MultiAutoCompleteTextView;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V

    .line 175
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(ILandroid/view/View;)V
    .locals 1

    .line 321
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 322
    iget v0, p0, Lo/MultiAutoCompleteTextView;->f:I

    if-ne p1, v0, :cond_0

    .line 323
    check-cast p2, Landroid/widget/Checkable;

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 325
    :cond_0
    check-cast p2, Landroid/widget/Checkable;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 7

    .line 221
    invoke-virtual {p0, p2}, Lo/MultiAutoCompleteTextView;->d(I)Lo/AR;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    instance-of v1, p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 227
    move-object v1, p1

    check-cast v1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    .line 228
    invoke-virtual {v1, v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->c(Lo/AR;)V

    .line 230
    iget-object v3, p0, Lo/MultiAutoCompleteTextView;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 231
    invoke-interface {v0}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 232
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPY-17693: Missing id from video summary for trackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lo/MultiAutoCompleteTextView;->g:Lo/Bv;

    if-nez v6, :cond_1

    const-string v6, "unknown"

    goto :goto_0

    .line 234
    :cond_1
    invoke-interface {v6}, Lo/Bv;->getTrackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 237
    :cond_2
    invoke-virtual {v3, v0, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    .line 238
    invoke-virtual {v1, v3}, Lo/MultiAutoCompleteTextView$StateListAnimator;->b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 241
    invoke-static {v1}, Lo/MultiAutoCompleteTextView$StateListAnimator;->b(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lo/Yd;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/Yd;->b(Z)V

    .line 244
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 245
    instance-of v1, p1, Lo/DM;

    if-eqz v1, :cond_4

    .line 249
    move-object v1, p1

    check-cast v1, Lo/DM;

    iget-object v2, p0, Lo/MultiAutoCompleteTextView;->a:Lo/Bb;

    invoke-interface {v1, v0, v2}, Lo/DM;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    :cond_4
    instance-of v1, p1, Lo/Ly$Activity;

    if-eqz v1, :cond_5

    .line 254
    iget-object v1, p0, Lo/MultiAutoCompleteTextView;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 255
    invoke-virtual {v1, v0, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    .line 256
    move-object v3, p1

    check-cast v3, Lo/Ly$Activity;

    invoke-interface {v3, v0, v1, p2, v2}, Lo/Ly$Activity;->c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    .line 259
    :cond_5
    :goto_1
    invoke-direct {p0, p2, p1}, Lo/MultiAutoCompleteTextView;->b(ILandroid/view/View;)V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 1

    .line 192
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 194
    iget-object p1, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 514
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 516
    iget-boolean p1, p0, Lo/MultiAutoCompleteTextView;->l:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 517
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 519
    :cond_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lo/MultiAutoCompleteTextView;->a(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 188
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lo/MultiAutoCompleteTextView;Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/MultiAutoCompleteTextView;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 356
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 476
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 510
    iget v0, p0, Lo/MultiAutoCompleteTextView;->f:I

    return v0
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 2

    .line 301
    instance-of v0, p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    .line 305
    invoke-static {p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;->b(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lo/Yd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Yd;->b(Z)V

    .line 306
    invoke-static {p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;->b(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lo/Yd;

    move-result-object p1

    invoke-static {p1}, Lo/Yh;->b(Lo/Yd;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Collection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lo/AR;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 447
    iget-object p2, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 449
    :cond_0
    iget-object p2, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Lo/Bv;)V
    .locals 1

    if-nez p1, :cond_0

    .line 104
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "setTrackableSummary shouldn\'t be null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->g:Lo/Bv;

    .line 107
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lo/MultiAutoCompleteTextView;->j:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 409
    iput p1, p0, Lo/MultiAutoCompleteTextView;->e:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public d(I)Lo/AR;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AR;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 1

    .line 427
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lo/AR;",
            ">;)V"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/util/Collection;ILo/MultiAutoCompleteTextView$Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lo/AR;",
            ">;I",
            "Lo/MultiAutoCompleteTextView$Application;",
            ")V"
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p3}, Lo/MultiAutoCompleteTextView;->e(Lo/MultiAutoCompleteTextView$Application;)V

    .line 422
    invoke-virtual {p0, p2}, Lo/MultiAutoCompleteTextView;->c(I)V

    .line 423
    invoke-virtual {p0, p1}, Lo/MultiAutoCompleteTextView;->d(Ljava/util/Collection;)V

    return-void
.end method

.method public e(Lo/MultiAutoCompleteTextView$Application;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lo/MultiAutoCompleteTextView;->h:Lo/MultiAutoCompleteTextView$Application;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lo/MultiAutoCompleteTextView;->l:Z

    return-void
.end method

.method public e(I)Z
    .locals 3

    .line 480
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 484
    :cond_0
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getItemCount()I
    .locals 2

    .line 337
    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/MultiAutoCompleteTextView;->i:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 394
    invoke-virtual {p0, p1}, Lo/MultiAutoCompleteTextView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Lo/MultiAutoCompleteTextView;->e(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 399
    :cond_1
    iget p1, p0, Lo/MultiAutoCompleteTextView;->e:I

    return p1
.end method

.method public h(I)V
    .locals 3

    .line 493
    iget-boolean v0, p0, Lo/MultiAutoCompleteTextView;->j:Z

    const-string v1, "RecyclerViewHeaderAdapter"

    if-nez v0, :cond_0

    const-string p1, "Not in single choice mode - skipping setItemChecked()"

    .line 494
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping setItemChecked() - invalid position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 503
    :cond_1
    iget v0, p0, Lo/MultiAutoCompleteTextView;->f:I

    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lo/MultiAutoCompleteTextView;->f:I

    .line 505
    invoke-virtual {p0, v0}, Lo/MultiAutoCompleteTextView;->notifyItemChanged(I)V

    .line 506
    invoke-virtual {p0, p1}, Lo/MultiAutoCompleteTextView;->notifyItemChanged(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 128
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollHorizontally()Z

    move-result p1

    iput-boolean p1, p0, Lo/MultiAutoCompleteTextView;->l:Z

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 2

    .line 155
    invoke-virtual {p0, p2}, Lo/MultiAutoCompleteTextView;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0, p1, p2}, Lo/MultiAutoCompleteTextView;->a(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 162
    invoke-direct {p0, p1}, Lo/MultiAutoCompleteTextView;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    goto :goto_0

    .line 163
    :cond_1
    iget v1, p0, Lo/MultiAutoCompleteTextView;->e:I

    if-ne v0, v1, :cond_2

    .line 164
    invoke-virtual {p0}, Lo/MultiAutoCompleteTextView;->a()I

    move-result v0

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0}, Lo/MultiAutoCompleteTextView;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V

    .line 167
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lo/MultiAutoCompleteTextView;->b(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 2

    .line 140
    iget v0, p0, Lo/MultiAutoCompleteTextView;->e:I

    if-ne p2, v0, :cond_0

    .line 141
    new-instance p2, Lo/MultiAutoCompleteTextView$StateListAnimator;

    iget-object v0, p0, Lo/MultiAutoCompleteTextView;->h:Lo/MultiAutoCompleteTextView$Application;

    invoke-interface {v0, p1}, Lo/MultiAutoCompleteTextView$Application;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;-><init>(Lo/MultiAutoCompleteTextView;Landroid/view/View;Landroid/content/Context;)V

    return-object p2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 144
    new-instance p2, Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;-><init>(Lo/MultiAutoCompleteTextView;Landroid/view/View;Landroid/content/Context;)V

    return-object p2

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 147
    new-instance p2, Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;-><init>(Lo/MultiAutoCompleteTextView;Landroid/view/View;Landroid/content/Context;)V

    return-object p2

    .line 150
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 3

    .line 268
    invoke-static {}, Lo/eG;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/MultiAutoCompleteTextView$StateListAnimator;

    .line 270
    invoke-virtual {v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->a()Lo/AR;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lo/DP;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DP;

    check-cast v0, Lo/DP;

    .line 275
    move-object v1, p1

    check-cast v1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    invoke-virtual {v1}, Lo/MultiAutoCompleteTextView$StateListAnimator;->a()Lo/AR;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v2, Lo/MultiAutoCompleteTextView$4;

    invoke-direct {v2, p0, v1}, Lo/MultiAutoCompleteTextView$4;-><init>(Lo/MultiAutoCompleteTextView;Lo/AR;)V

    .line 294
    invoke-virtual {v0, v2}, Lo/DP;->b(Lo/As;)V

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lo/MultiAutoCompleteTextView;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 313
    instance-of v0, p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    if-eqz v0, :cond_0

    .line 314
    check-cast p1, Lo/MultiAutoCompleteTextView$StateListAnimator;

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p1, v0}, Lo/MultiAutoCompleteTextView$StateListAnimator;->c(Lo/AR;)V

    .line 316
    invoke-static {p1}, Lo/MultiAutoCompleteTextView$StateListAnimator;->b(Lo/MultiAutoCompleteTextView$StateListAnimator;)Lo/Yd;

    move-result-object p1

    invoke-static {p1}, Lo/Yh;->c(Lo/Yd;)V

    :cond_0
    return-void
.end method
