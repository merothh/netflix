.class public final Lo/ProxyFileDescriptorCallback;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ProxyFileDescriptorCallback$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/ProxyFileDescriptorCallback$Activity;

.field private static final f:F

.field private static final k:I

.field private static final l:I

.field private static final n:F

.field private static final o:F


# instance fields
.field private a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Rect;

.field private final g:I

.field private final h:I

.field private i:Landroid/graphics/Rect;

.field private j:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/ProxyFileDescriptorCallback$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ProxyFileDescriptorCallback$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ProxyFileDescriptorCallback;->d:Lo/ProxyFileDescriptorCallback$Activity;

    const/16 v0, 0xa

    int-to-float v0, v0

    .line 262
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 263
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    .line 262
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 38
    sput v1, Lo/ProxyFileDescriptorCallback;->f:F

    .line 264
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 265
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 264
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 39
    sput v0, Lo/ProxyFileDescriptorCallback;->n:F

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 266
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 267
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 266
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 40
    sput v0, Lo/ProxyFileDescriptorCallback;->o:F

    const/16 v0, 0x14

    int-to-float v0, v0

    .line 268
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 269
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 268
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lo/ProxyFileDescriptorCallback;->k:I

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 270
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 271
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 270
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lo/ProxyFileDescriptorCallback;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    iput p3, p0, Lo/ProxyFileDescriptorCallback;->g:I

    iput p4, p0, Lo/ProxyFileDescriptorCallback;->h:I

    .line 48
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    .line 49
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    .line 50
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    .line 51
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    .line 259
    const-class p3, Landroid/app/Activity;

    invoke-static {p1, p3}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 55
    invoke-static {p1}, Lo/TwoLineListItem;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 57
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 260
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 57
    sget v1, Lo/IHwInterface$StateListAnimator;->a:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    sget v0, Lo/ProxyFileDescriptorCallback;->o:F

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    sget v0, Lo/ProxyFileDescriptorCallback;->k:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    const v0, -0x420a3d71    # -0.12f

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 64
    sget-object p3, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 261
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    .line 64
    sget v1, Lo/IHwInterface$StateListAnimator;->c:I

    invoke-static {p3, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p3

    .line 65
    iget-object v1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    sget v2, Lo/ProxyFileDescriptorCallback;->k:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 70
    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    .line 73
    sget v0, Lo/ProxyFileDescriptorCallback;->f:F

    .line 74
    sget v1, Lo/ProxyFileDescriptorCallback;->n:F

    neg-float v1, v1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 79
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 80
    sget-object p3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    aput p2, v0, p4

    .line 79
    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 82
    iput-object p1, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 89
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    return-void
.end method

.method private final b(Ljava/lang/String;Z)F
    .locals 4

    const-string v0, "1"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 223
    invoke-static {p1, v0, v1, v2, v3}, Lo/anv;->d(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_2
    const p1, 0x3f333333    # 0.7f

    :goto_0
    return p1
.end method

.method private final c(Landroid/graphics/Canvas;Ljava/lang/String;FFZI)V
    .locals 7

    .line 153
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->j:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lo/ProxyFileDescriptorCallback;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 158
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 161
    :cond_0
    invoke-direct {p0, p2}, Lo/ProxyFileDescriptorCallback;->c(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p2, p5}, Lo/ProxyFileDescriptorCallback;->b(Ljava/lang/String;Z)F

    move-result v1

    mul-float v0, v0, v1

    .line 165
    iget v1, p0, Lo/ProxyFileDescriptorCallback;->g:I

    iget v2, p0, Lo/ProxyFileDescriptorCallback;->h:I

    add-int/2addr v1, v2

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    int-to-float v4, v1

    add-float/2addr v4, p3

    .line 171
    iget v5, p0, Lo/ProxyFileDescriptorCallback;->h:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p4

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 174
    :cond_1
    iget-object v4, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lo/ProxyFileDescriptorCallback;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p4

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    if-nez p5, :cond_2

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 179
    iget-object v2, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v3, v2, 0x4

    :cond_2
    sub-float v0, p3, v0

    int-to-float v2, v3

    add-float/2addr v0, v2

    .line 182
    iget-object v2, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v2, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p5, :cond_4

    float-to-int p2, p3

    add-int/2addr p2, v1

    .line 186
    iget p3, p0, Lo/ProxyFileDescriptorCallback;->h:I

    add-int/2addr p2, p3

    .line 187
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p3, :cond_3

    sget-object p5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 188
    :cond_3
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p3, :cond_6

    .line 189
    iget-object p5, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    div-int/lit8 p5, p5, 0x4

    sub-int p5, p2, p5

    float-to-int p4, p4

    .line 190
    iget-object p6, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    sub-int p6, p4, p6

    sget v0, Lo/ProxyFileDescriptorCallback;->l:I

    sub-int/2addr p6, v0

    add-int/2addr p4, v0

    .line 188
    invoke-virtual {p3, p5, p6, p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_1

    :cond_4
    if-lez p6, :cond_6

    .line 196
    iget-object p2, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_5

    sget-object p3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 197
    :cond_5
    iget-object p2, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_6

    .line 198
    iget-object p3, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p5, p0, Lo/ProxyFileDescriptorCallback;->h:I

    sub-int/2addr p3, p5

    float-to-int p4, p4

    .line 199
    iget-object p5, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    sub-int p5, p4, p5

    sget p6, Lo/ProxyFileDescriptorCallback;->l:I

    sub-int/2addr p5, p6

    .line 200
    iget-object p6, p0, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lo/ProxyFileDescriptorCallback;->h:I

    sub-int/2addr p6, v0

    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p6, v0

    .line 201
    sget v0, Lo/ProxyFileDescriptorCallback;->l:I

    add-int/2addr p4, v0

    .line 197
    invoke-virtual {p2, p3, p5, p6, p4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 205
    :cond_6
    :goto_1
    iget-object p2, p0, Lo/ProxyFileDescriptorCallback;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 239
    sget v0, Lo/ProxyFileDescriptorCallback;->k:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int v0, v0, p2

    int-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 240
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    iget-object v0, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    iput-object p1, p0, Lo/ProxyFileDescriptorCallback;->j:Ljava/lang/Float;

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 4

    .line 211
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "1"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    const v0, -0x420a3d71    # -0.12f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 213
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 216
    iget-object p1, p0, Lo/ProxyFileDescriptorCallback;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 252
    iget p2, p0, Lo/ProxyFileDescriptorCallback;->g:I

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 254
    :cond_0
    iget p2, p0, Lo/ProxyFileDescriptorCallback;->g:I

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "canvas"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 99
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v11

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    move v12, v0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_5

    .line 103
    invoke-virtual {v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    const/4 v1, -0x1

    if-eq v14, v1, :cond_4

    .line 108
    iget-object v1, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 112
    iget v0, v7, Lo/ProxyFileDescriptorCallback;->g:I

    iget v1, v7, Lo/ProxyFileDescriptorCallback;->h:I

    add-int v15, v0, v1

    if-eqz v10, :cond_2

    .line 114
    iget-object v0, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, v15

    sub-float/2addr v0, v1

    goto :goto_3

    .line 116
    :cond_2
    iget-object v0, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v15

    add-float/2addr v0, v1

    :goto_3
    move v3, v0

    .line 119
    iget-object v0, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sget v1, Lo/ProxyFileDescriptorCallback;->l:I

    int-to-float v1, v1

    sub-float v16, v0, v1

    add-int/lit8 v6, v14, 0x1

    .line 122
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v16

    move v5, v10

    move v8, v6

    move v6, v13

    .line 125
    invoke-direct/range {v0 .. v6}, Lo/ProxyFileDescriptorCallback;->c(Landroid/graphics/Canvas;Ljava/lang/String;FFZI)V

    add-int/lit8 v0, v11, -0x1

    if-ne v13, v0, :cond_4

    if-ge v8, v12, :cond_4

    add-int/lit8 v14, v14, 0x2

    .line 131
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_3

    .line 134
    iget-object v0, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v15

    sub-float/2addr v0, v1

    goto :goto_4

    .line 136
    :cond_3
    iget-object v0, v7, Lo/ProxyFileDescriptorCallback;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, v15

    add-float/2addr v0, v1

    :goto_4
    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v16

    move v5, v10

    move v6, v13

    .line 138
    invoke-direct/range {v0 .. v6}, Lo/ProxyFileDescriptorCallback;->c(Landroid/graphics/Canvas;Ljava/lang/String;FFZI)V

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p2

    goto :goto_2

    :cond_5
    return-void
.end method
