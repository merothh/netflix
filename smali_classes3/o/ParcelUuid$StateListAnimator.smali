.class Lo/ParcelUuid$StateListAnimator;
.super Lo/ParcelFormatException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ParcelFormatException<",
        "Lo/ParcelUuid$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lo/PooledStringReader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/PooledStringWriter;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lo/ParcelFormatException;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    .line 108
    new-instance p2, Lo/PooledStringReader;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, Lo/PooledStringReader;-><init>(Landroid/content/Context;Lo/ParcelFormatException;Z)V

    iput-object p2, p0, Lo/ParcelUuid$StateListAnimator;->b:Lo/PooledStringReader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/PooledStringWriter;ILo/ParcelUuid$5;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lo/ParcelUuid$StateListAnimator;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/ParcelFormatException$Activity;)V
    .locals 0

    .line 102
    check-cast p1, Lo/ParcelUuid$Application;

    invoke-virtual {p0, p1}, Lo/ParcelUuid$StateListAnimator;->b(Lo/ParcelUuid$Application;)V

    return-void
.end method

.method public synthetic b(Lo/ParcelFormatException$Activity;I)V
    .locals 0

    .line 102
    check-cast p1, Lo/ParcelUuid$Application;

    invoke-virtual {p0, p1, p2}, Lo/ParcelUuid$StateListAnimator;->c(Lo/ParcelUuid$Application;I)V

    return-void
.end method

.method public b(Lo/ParcelUuid$Application;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lo/ParcelFormatException;->a(Lo/ParcelFormatException$Activity;)V

    return-void
.end method

.method public c(Lo/ParcelUuid$Application;I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/ParcelUuid$Application;
    .locals 6

    .line 113
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    sget p2, Lo/IHwInterface$FragmentManager;->n:I

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 115
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    invoke-virtual {p0}, Lo/ParcelUuid$StateListAnimator;->e()Lo/PooledStringWriter;

    move-result-object p2

    invoke-virtual {p2}, Lo/PooledStringWriter;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    new-instance p2, Lo/ParcelUuid$ActionBar;

    sget v4, Lo/IHwInterface$FragmentManager;->n:I

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lo/ParcelUuid$ActionBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;ILo/ParcelUuid$5;)V

    return-object p2

    .line 120
    :cond_0
    new-instance p2, Lo/ParcelUuid$Application;

    sget v4, Lo/IHwInterface$FragmentManager;->n:I

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lo/ParcelUuid$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;ILo/ParcelUuid$5;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lo/ParcelFormatException;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 127
    iget-object p1, p0, Lo/ParcelUuid$StateListAnimator;->b:Lo/PooledStringReader;

    invoke-virtual {p1}, Lo/PooledStringReader;->e()V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lo/ParcelUuid$StateListAnimator;->d(Landroid/view/ViewGroup;I)Lo/ParcelUuid$Application;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lo/ParcelFormatException;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 133
    iget-object p1, p0, Lo/ParcelUuid$StateListAnimator;->b:Lo/PooledStringReader;

    invoke-virtual {p1}, Lo/PooledStringReader;->a()V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 102
    check-cast p1, Lo/ParcelUuid$Application;

    invoke-virtual {p0, p1}, Lo/ParcelUuid$StateListAnimator;->b(Lo/ParcelUuid$Application;)V

    return-void
.end method
