.class public final Lo/DayPickerView;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DayPickerView$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:I

.field public static final b:Lo/DayPickerView$StateListAnimator;

.field private static final c:I

.field private static final d:I

.field private static final f:Landroid/graphics/Paint;

.field private static final g:Landroid/graphics/Paint;

.field private static final h:Landroid/graphics/Paint;

.field private static final i:I

.field private static final j:Landroid/util/DisplayMetrics;

.field private static final k:Landroid/graphics/Paint;

.field private static m:Landroid/graphics/Rect;


# instance fields
.field private final e:Lo/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/DayPickerView$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DayPickerView$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/DayPickerView;->b:Lo/DayPickerView$StateListAnimator;

    const/16 v0, 0x60

    const/4 v1, 0x0

    const/16 v2, 0xa0

    .line 27
    invoke-static {v0, v1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sput v2, Lo/DayPickerView;->c:I

    const/16 v2, 0xb4

    const/16 v3, 0x46

    .line 29
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sput v2, Lo/DayPickerView;->d:I

    const/16 v2, 0xff

    .line 31
    invoke-static {v0, v2, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lo/DayPickerView;->a:I

    .line 33
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getContext()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getContext().resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lo/DayPickerView;->j:Landroid/util/DisplayMetrics;

    .line 35
    sget-object v0, Lo/DayPickerView;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lo/DayPickerView;->i:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 38
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object v2, Lo/DayPickerView;->j:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    sput-object v0, Lo/DayPickerView;->f:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lo/DayPickerView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sput-object v0, Lo/DayPickerView;->g:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lo/DayPickerView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sput-object v0, Lo/DayPickerView;->h:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lo/DayPickerView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sput-object v0, Lo/DayPickerView;->k:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lo/GridView;)V
    .locals 1

    const-string v0, "netflixImageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lo/DayPickerView;->e:Lo/GridView;

    return-void
.end method

.method private final c(II)Landroid/graphics/Paint;
    .locals 2

    .line 104
    iget-object v0, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p1

    .line 105
    iget-object v0, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    int-to-float p1, p2

    .line 106
    iget-object p2, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {p2}, Lo/GridView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    sget-object p1, Lo/DayPickerView;->g:Landroid/graphics/Paint;

    goto :goto_2

    .line 106
    :cond_2
    :goto_0
    sget-object p1, Lo/DayPickerView;->h:Landroid/graphics/Paint;

    goto :goto_2

    .line 104
    :cond_3
    :goto_1
    sget-object p1, Lo/DayPickerView;->k:Landroid/graphics/Paint;

    :goto_2
    return-object p1
.end method

.method private final d(ILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 4

    .line 88
    sget-object v0, Lo/DayPickerView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 89
    sget-object v0, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    sget v1, Lo/DayPickerView;->i:I

    add-int/lit8 p1, p1, 0x1

    mul-int v1, v1, p1

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 90
    sget-object v0, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 91
    sget-object v0, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 92
    sget-object v0, Lo/DayPickerView;->m:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 p3, 0xc

    int-to-float p3, p3

    .line 93
    sget v0, Lo/DayPickerView;->i:I

    mul-int v0, v0, p1

    int-to-float p1, v0

    sget-object v0, Lo/DayPickerView;->f:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final e(Lcom/netflix/android/imageloader/api/ImageDataSource;)Landroid/graphics/Paint;
    .locals 1

    if-nez p1, :cond_0

    .line 116
    sget-object p1, Lo/DayPickerView;->g:Landroid/graphics/Paint;

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Lo/DoubleDigitManager;->a:[I

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ImageDataSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 115
    sget-object p1, Lo/DayPickerView;->g:Landroid/graphics/Paint;

    goto :goto_0

    .line 116
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 114
    :cond_2
    sget-object p1, Lo/DayPickerView;->h:Landroid/graphics/Paint;

    goto :goto_0

    .line 113
    :cond_3
    sget-object p1, Lo/DayPickerView;->k:Landroid/graphics/Paint;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 66
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v5, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v5}, Lo/GridView;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v5}, Lo/GridView;->getHeight()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    sget-object v5, Lo/amj;->c:Lo/amj;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "Locale.ENGLISH"

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v6, [Ljava/lang/Object;

    int-to-float v9, v3

    .line 71
    iget-object v10, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v10}, Lo/GridView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    int-to-float v9, v0

    .line 72
    iget-object v10, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v10}, Lo/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    .line 70
    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.2f/%.2f"

    invoke-static {v5, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "java.lang.String.format(locale, format, *args)"

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, ""

    .line 74
    :goto_2
    invoke-direct {p0, v3, v0}, Lo/DayPickerView;->c(II)Landroid/graphics/Paint;

    move-result-object v0

    .line 76
    invoke-direct {p0, v1, v4, v0, p1}, Lo/DayPickerView;->d(ILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 77
    invoke-direct {p0, v7, v5, v0, p1}, Lo/DayPickerView;->d(ILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    .line 78
    iget-object v1, p0, Lo/DayPickerView;->e:Lo/GridView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/GridView;->f()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v2}, Lo/GridView;->f()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/DayPickerView;->e(Lcom/netflix/android/imageloader/api/ImageDataSource;)Landroid/graphics/Paint;

    move-result-object v2

    .line 78
    invoke-direct {p0, v6, v1, v2, p1}, Lo/DayPickerView;->d(ILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v2}, Lo/GridView;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lo/DayPickerView;->e:Lo/GridView;

    invoke-virtual {v2}, Lo/GridView;->f()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/DayPickerView;->e(Lcom/netflix/android/imageloader/api/ImageDataSource;)Landroid/graphics/Paint;

    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v1, v2, p1}, Lo/DayPickerView;->d(ILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 83
    sget-object p1, Lo/DayPickerView;->b:Lo/DayPickerView$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_5
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
