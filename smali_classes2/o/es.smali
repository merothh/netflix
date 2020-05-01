.class public final Lo/es;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/es$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/es$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/es$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/es$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/es;->b:Lo/es$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "16292"

    .line 12
    iput-object v0, p0, Lo/es;->c:Ljava/lang/String;

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lo/es;->e:I

    const-string v0, "Global Player Controls"

    .line 16
    iput-object v0, p0, Lo/es;->a:Ljava/lang/String;

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/es;->b:Lo/es$Application;

    invoke-virtual {v0}, Lo/es$Application;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/es;->c:Ljava/lang/String;

    return-object v0
.end method
