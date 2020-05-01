.class public final Lo/eU;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eU$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/eU$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eU$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eU$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eU;->d:Lo/eU$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "20511"

    .line 18
    iput-object v0, p0, Lo/eU;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lo/eU;->c:I

    return-void
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/eU;->d:Lo/eU$Application;

    invoke-virtual {v0}, Lo/eU$Application;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/eU;->a:Ljava/lang/String;

    return-object v0
.end method
