.class public final Lo/dY;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dY$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/dY$Application;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/dY;->b:Lo/dY$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "13209"

    .line 8
    iput-object v0, p0, Lo/dY;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lo/dY;->e:I

    const-string v0, "Season Renewal Holdback"

    .line 12
    iput-object v0, p0, Lo/dY;->d:Ljava/lang/String;

    return-void
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/dY;->b:Lo/dY$Application;

    invoke-virtual {v0}, Lo/dY$Application;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/dY;->c:Ljava/lang/String;

    return-object v0
.end method
