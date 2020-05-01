.class public final Lo/eY;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eY$Application;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final a:I = 0x1f4

.field public static final d:Lo/eY$Application;

# The value of this static final field might be set in the static constructor
.field private static final g:I = 0x64

# The value of this static final field might be set in the static constructor
.field private static final h:I = 0x32

# The value of this static final field might be set in the static constructor
.field private static final j:I = 0xfa


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eY;->d:Lo/eY$Application;

    const/16 v0, 0x1f4

    .line 26
    sput v0, Lo/eY;->a:I

    const/16 v0, 0xfa

    .line 27
    sput v0, Lo/eY;->j:I

    const/16 v0, 0x64

    .line 28
    sput v0, Lo/eY;->g:I

    const/16 v0, 0x32

    .line 29
    sput v0, Lo/eY;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "21822"

    .line 8
    iput-object v0, p0, Lo/eY;->b:Ljava/lang/String;

    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lo/eY;->e:I

    const-string v0, "Slow Download While Streaming"

    .line 12
    iput-object v0, p0, Lo/eY;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic f()I
    .locals 1

    .line 6
    sget v0, Lo/eY;->g:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 6
    sget v0, Lo/eY;->h:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 6
    sget v0, Lo/eY;->j:I

    return v0
.end method

.method public static final synthetic j()I
    .locals 1

    .line 6
    sget v0, Lo/eY;->a:I

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/eY;->b:Ljava/lang/String;

    return-object v0
.end method
