.class public final Lo/amb;
.super Ljava/lang/Object;
.source ""


# static fields
# The value of this static final field might be set in the static constructor
.field private static final a:F = -Infinityf

# The value of this static final field might be set in the static constructor
.field private static final b:F = 3.4028235E38f

# The value of this static final field might be set in the static constructor
.field private static final c:F = 1.4E-45f

# The value of this static final field might be set in the static constructor
.field private static final d:F = Infinityf

.field public static final e:Lo/amb;

# The value of this static final field might be set in the static constructor
.field private static final f:F = NaNf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/amb;

    invoke-direct {v0}, Lo/amb;-><init>()V

    sput-object v0, Lo/amb;->e:Lo/amb;

    const/4 v0, 0x1

    .line 17
    sput v0, Lo/amb;->c:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    sput v0, Lo/amb;->b:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 19
    sput v0, Lo/amb;->d:F

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 20
    sput v0, Lo/amb;->a:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 21
    sput v0, Lo/amb;->f:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 17
    sget v0, Lo/amb;->c:F

    return v0
.end method

.method public final c()F
    .locals 1

    .line 18
    sget v0, Lo/amb;->b:F

    return v0
.end method
