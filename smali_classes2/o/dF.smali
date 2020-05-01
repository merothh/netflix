.class public final Lo/dF;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dF$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/dF$Activity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dF$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dF$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/dF;->d:Lo/dF$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "24115"

    .line 13
    iput-object v0, p0, Lo/dF;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/dF;->e:I

    const-string v0, "Drop MSL Edge Envelope"

    .line 17
    iput-object v0, p0, Lo/dF;->c:Ljava/lang/String;

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/dF;->d:Lo/dF$Activity;

    invoke-virtual {v0}, Lo/dF$Activity;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/dF;->a:Ljava/lang/String;

    return-object v0
.end method
