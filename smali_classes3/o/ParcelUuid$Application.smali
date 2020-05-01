.class Lo/ParcelUuid$Application;
.super Lo/ParcelFormatException$Activity;
.source ""

# interfaces
.implements Lo/PooledStringReader$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field protected a:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ParcelFormatException$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    .line 161
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/ParcelUuid$Application;->b:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 164
    invoke-interface {p3}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p2

    invoke-virtual {p2}, Lo/PooledStringWriter;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lo/IHwInterface$TaskDescription;->a:I

    goto :goto_0

    :cond_0
    sget p2, Lo/IHwInterface$TaskDescription;->c:I

    .line 162
    :goto_0
    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lo/ParcelUuid$Application;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;ILo/ParcelUuid$5;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ParcelUuid$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    return-void
.end method


# virtual methods
.method public S_()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public T_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 1

    .line 175
    iget-object v0, p0, Lo/ParcelUuid$Application;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public synthetic h()Landroid/view/View;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lo/ParcelUuid$Application;->f()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .line 170
    iget-object v0, p0, Lo/ParcelUuid$Application;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method
