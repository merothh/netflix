.class public final Lo/ff;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ff$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/ff$Application;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ff$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ff$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ff;->a:Lo/ff$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "23024"

    .line 12
    iput-object v0, p0, Lo/ff;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lo/ff;->e:I

    const-string v0, "[Android] Falcor Memory Expiry from network"

    .line 16
    iput-object v0, p0, Lo/ff;->b:Ljava/lang/String;

    return-void
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/ff;->a:Lo/ff$Application;

    invoke-virtual {v0}, Lo/ff$Application;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/ff;->c:Ljava/lang/String;

    return-object v0
.end method
