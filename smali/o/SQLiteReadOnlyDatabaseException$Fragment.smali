.class Lo/SQLiteReadOnlyDatabaseException$Fragment;
.super Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteReadOnlyDatabaseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fragment"
.end annotation


# static fields
.field public static final j:Lo/SQLiteReadOnlyDatabaseException$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lo/SQLiteReadOnlyDatabaseException$Fragment;

    invoke-direct {v0}, Lo/SQLiteReadOnlyDatabaseException$Fragment;-><init>()V

    sput-object v0, Lo/SQLiteReadOnlyDatabaseException$Fragment;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 206
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 207
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 208
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 209
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 210
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_start"

    return-object v0
.end method
