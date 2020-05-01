.class public final Lo/ShareActionProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ShareActionProvider$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/ShareActionProvider$Application;


# instance fields
.field private a:Z

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/graphics/Rect;

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/PorterDuff$Mode;

.field private i:Landroid/view/View;

.field private j:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ShareActionProvider$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ShareActionProvider$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ShareActionProvider;->e:Lo/ShareActionProvider$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    iput-boolean p2, p0, Lo/ShareActionProvider;->o:Z

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lo/ShareActionProvider;->a:Z

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/ShareActionProvider;->d:Landroid/graphics/Rect;

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/ShareActionProvider;->b:Landroid/graphics/Rect;

    .line 38
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lo/ShareActionProvider;->h:Landroid/graphics/PorterDuff$Mode;

    const/16 p1, 0x77

    .line 66
    iput p1, p0, Lo/ShareActionProvider;->j:I

    .line 85
    iget-object p1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lo/ShareActionProvider;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;ZILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/ShareActionProvider;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public b(FF)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 68
    iget v0, p0, Lo/ShareActionProvider;->j:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 78
    :cond_1
    iput p1, p0, Lo/ShareActionProvider;->j:I

    .line 79
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 50
    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 51
    iget-object v2, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    iput-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/ShareActionProvider;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_1
    iget-object p1, p0, Lo/ShareActionProvider;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    :cond_2
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    :cond_3
    sget-boolean p1, Lo/GridView;->c:Z

    if-eqz p1, :cond_4

    .line 58
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 60
    :cond_4
    invoke-virtual {p0}, Lo/ShareActionProvider;->b()V

    .line 61
    iput-boolean v1, p0, Lo/ShareActionProvider;->a:Z

    .line 62
    iget-object p1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method public final c(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lo/ShareActionProvider;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 41
    iput-object p1, p0, Lo/ShareActionProvider;->h:Landroid/graphics/PorterDuff$Mode;

    .line 42
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ShareActionProvider;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/ShareActionProvider;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lo/ShareActionProvider;->c:Landroid/content/res/ColorStateList;

    .line 34
    iget-object p1, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ShareActionProvider;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lo/ShareActionProvider;->a:Z

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lo/ShareActionProvider;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 103
    iget-boolean v1, p0, Lo/ShareActionProvider;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lo/ShareActionProvider;->a:Z

    .line 106
    iget-boolean v2, p0, Lo/ShareActionProvider;->o:Z

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lo/ShareActionProvider;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lo/ShareActionProvider;->d:Landroid/graphics/Rect;

    .line 110
    iget-object v2, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 111
    iget-object v3, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 112
    iget-object v4, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 113
    iget-object v5, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 109
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    :goto_0
    iget v6, p0, Lo/ShareActionProvider;->j:I

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 121
    iget-object v9, p0, Lo/ShareActionProvider;->d:Landroid/graphics/Rect;

    iget-object v10, p0, Lo/ShareActionProvider;->b:Landroid/graphics/Rect;

    .line 122
    iget-object v1, p0, Lo/ShareActionProvider;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    .line 117
    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 124
    iget-object v1, p0, Lo/ShareActionProvider;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method
