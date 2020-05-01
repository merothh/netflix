.class public final Lo/eo;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eo$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/eo$ActionBar;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eo$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eo$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15670"

    .line 44
    iput-object v0, p0, Lo/eo;->d:Ljava/lang/String;

    const-string v0, "Android Aim-low: Search Lite"

    .line 46
    iput-object v0, p0, Lo/eo;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lo/eo;->a:I

    return-void
.end method

.method public static final f()J
    .locals 2

    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->a()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->e()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/eo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
