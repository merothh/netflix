.class Lo/SQLiteReadOnlyDatabaseException$FragmentManager;
.super Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteReadOnlyDatabaseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentManager"
.end annotation


# static fields
.field public static final j:Lo/SQLiteReadOnlyDatabaseException$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lo/SQLiteReadOnlyDatabaseException$FragmentManager;

    invoke-direct {v0}, Lo/SQLiteReadOnlyDatabaseException$FragmentManager;-><init>()V

    sput-object v0, Lo/SQLiteReadOnlyDatabaseException$FragmentManager;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 180
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 181
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 182
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    int-to-float p3, p3

    add-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p2, p2

    .line 183
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_xy"

    return-object v0
.end method
