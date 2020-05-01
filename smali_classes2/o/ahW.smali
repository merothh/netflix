.class public Lo/ahW;
.super Lo/aib;
.source ""


# static fields
.field public static final a:Lo/aib;

.field public static final b:Lo/aib;

.field public static final c:Lo/aib;

.field public static final d:Lo/aib;

.field public static final e:Lo/aib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lo/ahW;

    const-string v1, "NETFLIXID"

    invoke-direct {v0, v1}, Lo/ahW;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahW;->e:Lo/aib;

    .line 15
    new-instance v0, Lo/ahW;

    const-string v1, "SSO"

    invoke-direct {v0, v1}, Lo/ahW;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahW;->c:Lo/aib;

    .line 17
    new-instance v0, Lo/ahW;

    const-string v1, "SWITCH_PROFILE"

    invoke-direct {v0, v1}, Lo/ahW;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahW;->a:Lo/aib;

    .line 19
    new-instance v0, Lo/ahW;

    const-string v1, "MDX"

    invoke-direct {v0, v1}, Lo/ahW;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahW;->d:Lo/aib;

    .line 21
    new-instance v0, Lo/ahW;

    const-string v1, "MIGRATION"

    invoke-direct {v0, v1}, Lo/ahW;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahW;->b:Lo/aib;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/aib;-><init>(Ljava/lang/String;)V

    return-void
.end method
