.class public final Lo/dZ;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dZ$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/dZ$ActionBar;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dZ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dZ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/dZ;->b:Lo/dZ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "13706"

    .line 9
    iput-object v0, p0, Lo/dZ;->d:Ljava/lang/String;

    const/4 v0, 0x6

    .line 11
    iput v0, p0, Lo/dZ;->a:I

    const-string v0, "Search: Timeout to PreQuery"

    .line 13
    iput-object v0, p0, Lo/dZ;->c:Ljava/lang/String;

    const-string v0, "persistent_ab13706"

    .line 15
    iput-object v0, p0, Lo/dZ;->e:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dZ;->b:Lo/dZ$ActionBar;

    invoke-virtual {v0}, Lo/dZ$ActionBar;->e()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/dZ;->b:Lo/dZ$ActionBar;

    invoke-virtual {v0}, Lo/dZ$ActionBar;->d()Z

    move-result v0

    return v0
.end method

.method public static final i()J
    .locals 2

    sget-object v0, Lo/dZ;->b:Lo/dZ$ActionBar;

    invoke-virtual {v0}, Lo/dZ$ActionBar;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/dZ;->d:Ljava/lang/String;

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
    iget-object v0, p0, Lo/dZ;->e:Ljava/lang/String;

    return-object v0
.end method