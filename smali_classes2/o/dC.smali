.class public final Lo/dC;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dC$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/dC$Application;


# instance fields
.field private final a:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dC$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dC$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/dC;->c:Lo/dC$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22084"

    .line 12
    iput-object v0, p0, Lo/dC;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lo/dC;->a:I

    const-string v0, "Android Downloads Lite"

    .line 16
    iput-object v0, p0, Lo/dC;->e:Ljava/lang/String;

    return-void
.end method

.method public static final A_()Z
    .locals 1

    sget-object v0, Lo/dC;->c:Lo/dC$Application;

    invoke-virtual {v0}, Lo/dC$Application;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/dC;->d:Ljava/lang/String;

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
