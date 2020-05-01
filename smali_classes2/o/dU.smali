.class public final Lo/dU;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dU$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/dU$Application;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dU$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dU$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/dU;->d:Lo/dU$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12974"

    .line 8
    iput-object v0, p0, Lo/dU;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lo/dU;->b:I

    const-string v0, "Play Services Cronet"

    .line 12
    iput-object v0, p0, Lo/dU;->c:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dU;->d:Lo/dU$Application;

    invoke-virtual {v0}, Lo/dU$Application;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/dU;->e:Ljava/lang/String;

    return-object v0
.end method
