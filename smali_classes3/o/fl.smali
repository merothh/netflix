.class public final Lo/fl;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fl$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/fl$ActionBar;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fl$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fl$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23413"

    .line 23
    iput-object v0, p0, Lo/fl;->e:Ljava/lang/String;

    const-string v0, "Android Search lolomo on NAPA"

    .line 25
    iput-object v0, p0, Lo/fl;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lo/fl;->b:I

    return-void
.end method

.method public static final g()J
    .locals 2

    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->c()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/fl;->e:Ljava/lang/String;

    return-object v0
.end method
