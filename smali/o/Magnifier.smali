.class public final Lo/Magnifier;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Magnifier$TaskDescription;,
        Lo/Magnifier$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/Magnifier$Activity;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private h:Lo/Magnifier$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Magnifier$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Magnifier$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Magnifier;->e:Lo/Magnifier$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1010036

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget v0, v0, Landroid/util/TypedValue;->data:I

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 37
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lo/Magnifier;->c:I

    .line 38
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lo/Magnifier;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget v0, Lo/LoaderManager$StateListAnimator;->Q:I

    invoke-direct {p0, p1, p2, v0}, Lo/Magnifier;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p2, p3}, Lo/Magnifier;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic b(Lo/Magnifier;)Lo/Magnifier$TaskDescription;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/Magnifier;->h:Lo/Magnifier$TaskDescription;

    return-object p0
.end method

.method private final b(Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lo/Magnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    sget-object v1, Lo/LoaderManager$Dialog;->dx:[I

    const/4 v2, 0x0

    .line 50
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 53
    sget p2, Lo/LoaderManager$Dialog;->ed:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lo/Magnifier;->b:I

    .line 55
    sget p2, Lo/LoaderManager$Dialog;->dQ:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lo/Magnifier;->a:I

    .line 57
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lo/Magnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 58
    iget v0, p0, Lo/Magnifier;->b:I

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lo/Magnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lo/Magnifier;->b:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 62
    :cond_0
    sget v0, Lo/LoaderManager$Dialog;->eb:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget p2, Lo/LoaderManager$Dialog;->eb:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p2

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getCurrentTextColor()I

    move-result p2

    .line 62
    :goto_0
    iput p2, p0, Lo/Magnifier;->c:I

    .line 68
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lo/Magnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 69
    iget v0, p0, Lo/Magnifier;->a:I

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lo/Magnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lo/Magnifier;->a:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 73
    :cond_2
    sget v0, Lo/LoaderManager$Dialog;->dR:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget p2, Lo/LoaderManager$Dialog;->dR:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p2

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getCurrentTextColor()I

    move-result p2

    .line 73
    :goto_1
    iput p2, p0, Lo/Magnifier;->d:I

    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 83
    iget v0, p0, Lo/Magnifier;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 91
    iget v0, p0, Lo/Magnifier;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 87
    iget v0, p0, Lo/Magnifier;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 95
    iget v0, p0, Lo/Magnifier;->d:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object p1, p0, Lo/Magnifier;->h:Lo/Magnifier$TaskDescription;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/Magnifier$TaskDescription;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "what"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/Toolbar;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 101
    new-instance p1, Lo/Magnifier$Application;

    invoke-direct {p1, p0}, Lo/Magnifier$Application;-><init>(Lo/Magnifier;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p3, p4}, Lo/Magnifier;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setBackgroundChangeListener(Lo/Magnifier$TaskDescription;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lo/Magnifier;->h:Lo/Magnifier$TaskDescription;

    return-void
.end method
