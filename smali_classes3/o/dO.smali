.class public final Lo/dO;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dO$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/dO$Activity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dO$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dO$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/dO;->c:Lo/dO$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12612"

    .line 9
    iput-object v0, p0, Lo/dO;->b:Ljava/lang/String;

    const/16 v0, 0x8

    .line 11
    iput v0, p0, Lo/dO;->d:I

    const-string v0, "Amazing Search Rows 3"

    .line 13
    iput-object v0, p0, Lo/dO;->e:Ljava/lang/String;

    const-string v0, "persistent_ab12612"

    .line 15
    iput-object v0, p0, Lo/dO;->a:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dO;->c:Lo/dO$Activity;

    invoke-virtual {v0}, Lo/dO$Activity;->e()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/dO;->c:Lo/dO$Activity;

    invoke-virtual {v0}, Lo/dO$Activity;->b()Z

    move-result v0

    return v0
.end method

.method public static final i()J
    .locals 2

    sget-object v0, Lo/dO;->c:Lo/dO$Activity;

    invoke-virtual {v0}, Lo/dO$Activity;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/dO;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/dO;->a:Ljava/lang/String;

    return-object v0
.end method
