.class public Lo/KL$Activity;
.super Lo/KL$StateListAnimator;
.source ""

# interfaces
.implements Lo/PooledStringReader$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private f:Z

.field private final i:Lo/PooledStringReader;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V
    .locals 1

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lo/KL$StateListAnimator;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lo/KL$Activity;->f:Z

    .line 283
    invoke-interface {p3}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object p3

    invoke-virtual {p3}, Lo/PooledStringWriter;->o()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 284
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->l:I

    goto :goto_0

    .line 286
    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->k:I

    .line 288
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lo/KL$Activity;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 289
    iput-object p2, p0, Lo/KL$Activity;->a:Landroid/view/View;

    .line 290
    iput-object p4, p0, Lo/KL$Activity;->i:Lo/PooledStringReader;

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

.method public b()V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lo/KL$Activity;->f:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lo/KL$Activity;->i:Lo/PooledStringReader;

    invoke-virtual {v0}, Lo/PooledStringReader;->d()V

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lo/KL$Activity;->f:Z

    .line 332
    :cond_0
    invoke-super {p0}, Lo/KL$StateListAnimator;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 316
    invoke-super {p0}, Lo/KL$StateListAnimator;->d()V

    .line 317
    invoke-virtual {p0}, Lo/KL$Activity;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lo/KL$Activity;->c:Lo/PatternMatcher;

    invoke-interface {v1}, Lo/PatternMatcher;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lo/PooledStringWriter;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lo/KL$Activity;->i:Lo/PooledStringReader;

    invoke-virtual {v0}, Lo/PooledStringReader;->b()V

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lo/KL$Activity;->f:Z

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 295
    iget-object v0, p0, Lo/KL$Activity;->a:Landroid/view/View;

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    .line 300
    iget-object v0, p0, Lo/KL$Activity;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method
