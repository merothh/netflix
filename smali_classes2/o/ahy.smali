.class public Lo/ahy;
.super Lo/ahx;
.source ""


# static fields
.field public static final f:Lo/ahx;

.field public static final g:Lo/ahx;

.field public static final h:Lo/ahx;

.field public static final i:Lo/ahx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lo/ahy;

    const-string v1, "AUTHENTICATED_DH"

    invoke-direct {v0, v1}, Lo/ahy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahy;->g:Lo/ahx;

    .line 15
    new-instance v0, Lo/ahy;

    const-string v1, "WIDEVINE"

    invoke-direct {v0, v1}, Lo/ahy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahy;->i:Lo/ahx;

    .line 17
    new-instance v0, Lo/ahy;

    const-string v1, "ANYCAST"

    invoke-direct {v0, v1}, Lo/ahy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahy;->h:Lo/ahx;

    .line 19
    new-instance v0, Lo/ahy;

    const-string v1, "CDM"

    invoke-direct {v0, v1}, Lo/ahy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahy;->f:Lo/ahx;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    return-void
.end method
