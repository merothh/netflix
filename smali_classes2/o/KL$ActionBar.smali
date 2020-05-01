.class public Lo/KL$ActionBar;
.super Lo/KL$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1, p2, p3, p4}, Lo/KL$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V

    .line 353
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 354
    invoke-interface {p3}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p2

    invoke-virtual {p2}, Lo/PooledStringWriter;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->o:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->g:I

    .line 352
    :goto_0
    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lo/KL$ActionBar;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;Lo/KL$2;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lo/KL$ActionBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V

    return-void
.end method


# virtual methods
.method public S_()Landroid/graphics/Rect;
    .locals 4

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lo/KL$ActionBar;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lo/KL$ActionBar;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
