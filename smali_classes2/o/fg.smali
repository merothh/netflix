.class public final Lo/fg;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fg$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/fg$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fg$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fg$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/fg;->d:Lo/fg$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22929"

    .line 15
    iput-object v0, p0, Lo/fg;->e:Ljava/lang/String;

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lo/fg;->c:I

    const-string v0, "Languages on DP"

    .line 19
    iput-object v0, p0, Lo/fg;->a:Ljava/lang/String;

    return-void
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lo/fg;->d:Lo/fg$Application;

    invoke-virtual {v0}, Lo/fg$Application;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/fg;->d:Lo/fg$Application;

    invoke-virtual {v0}, Lo/fg$Application;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/fg;->e:Ljava/lang/String;

    return-object v0
.end method
