.class Lo/SQLiteReadOnlyDatabaseException$ActionBar;
.super Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteReadOnlyDatabaseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# static fields
.field public static final j:Lo/SQLiteReadOnlyDatabaseException$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lo/SQLiteReadOnlyDatabaseException$ActionBar;

    invoke-direct {v0}, Lo/SQLiteReadOnlyDatabaseException$ActionBar;-><init>()V

    sput-object v0, Lo/SQLiteReadOnlyDatabaseException$ActionBar;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    const/high16 p5, 0x3f000000    # 0.5f

    cmpl-float p6, p8, p7

    if-lez p6, :cond_0

    .line 369
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    int-to-float p3, p3

    mul-float p3, p3, p8

    sub-float/2addr p6, p3

    mul-float p6, p6, p5

    add-float/2addr p4, p6

    .line 370
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    move p3, p4

    move p7, p8

    goto :goto_0

    .line 373
    :cond_0
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 374
    iget p6, p2, Landroid/graphics/Rect;->top:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p7

    sub-float/2addr p2, p4

    mul-float p2, p2, p5

    add-float/2addr p2, p6

    .line 376
    :goto_0
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, p5

    float-to-int p3, p3

    int-to-float p3, p3

    add-float/2addr p2, p5

    float-to-int p2, p2

    int-to-float p2, p2

    .line 377
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "center_crop"

    return-object v0
.end method
