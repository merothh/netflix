.class public final Lo/dX;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dX$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/dX$Activity;


# instance fields
.field private final b:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dX$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dX$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/dX;->a:Lo/dX$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "13688"

    .line 25
    iput-object v0, p0, Lo/dX;->d:Ljava/lang/String;

    const-string v0, "Android ExoPlayer KeepAlive Test"

    .line 27
    iput-object v0, p0, Lo/dX;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lo/dX;->b:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/dX;->a:Lo/dX$Activity;

    invoke-virtual {v0}, Lo/dX$Activity;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/dX;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab13688"

    return-object v0
.end method
