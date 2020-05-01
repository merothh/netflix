.class public final Lo/eS;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eS$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/eS$Activity;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eS$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eS$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/eS;->d:Lo/eS$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "21356"

    .line 12
    iput-object v0, p0, Lo/eS;->c:Ljava/lang/String;

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lo/eS;->a:I

    const-string v0, "Teen Profile"

    .line 16
    iput-object v0, p0, Lo/eS;->b:Ljava/lang/String;

    return-void
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/eS;->d:Lo/eS$Activity;

    invoke-virtual {v0}, Lo/eS$Activity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/eS;->c:Ljava/lang/String;

    return-object v0
.end method
