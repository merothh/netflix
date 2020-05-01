.class Lo/ParcelUuid$ActionBar;
.super Lo/ParcelUuid$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 193
    invoke-direct/range {v0 .. v5}, Lo/ParcelUuid$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;ILo/ParcelUuid$5;)V

    .line 195
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 196
    invoke-interface {p3}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p2

    invoke-virtual {p2}, Lo/PooledStringWriter;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lo/IHwInterface$TaskDescription;->d:I

    goto :goto_0

    :cond_0
    sget p2, Lo/IHwInterface$TaskDescription;->e:I

    .line 194
    :goto_0
    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lo/ParcelUuid$ActionBar;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;ILo/ParcelUuid$5;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ParcelUuid$ActionBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    return-void
.end method


# virtual methods
.method public S_()Landroid/graphics/Rect;
    .locals 4

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lo/ParcelUuid$ActionBar;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lo/ParcelUuid$ActionBar;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
