.class public final Lo/Filter$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "NetflixButtonDrawable"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/Filter$Activity;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/Filter$Activity;->a(Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 19
    invoke-virtual {p1}, Lo/FilterQueryProvider;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 25
    invoke-virtual {p1}, Lo/FilterQueryProvider;->j()I

    move-result p1

    int-to-float p1, p1

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 v3, 0x2

    aput p1, v2, v3

    const/4 v3, 0x3

    aput p1, v2, v3

    const/4 v3, 0x4

    aput p1, v2, v3

    const/4 v3, 0x5

    aput p1, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput p1, v2, v3

    .line 27
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {p1, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 28
    check-cast p1, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 29
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static final synthetic c(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/Filter$Activity;->e(Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/Filter$Activity;->d(Lo/FilterQueryProvider;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lo/FilterQueryProvider;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 48
    invoke-virtual {p1}, Lo/FilterQueryProvider;->e()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "ColorStateList.valueOf(attributes.rippleColor)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 33
    invoke-virtual {p1}, Lo/FilterQueryProvider;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 39
    invoke-virtual {p1}, Lo/FilterQueryProvider;->i()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-virtual {p1}, Lo/FilterQueryProvider;->i()I

    move-result v1

    invoke-virtual {p1}, Lo/FilterQueryProvider;->c()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 42
    :cond_1
    invoke-virtual {p1}, Lo/FilterQueryProvider;->a()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 43
    invoke-virtual {p1}, Lo/FilterQueryProvider;->j()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
