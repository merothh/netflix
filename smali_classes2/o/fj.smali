.class public final Lo/fj;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fj$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/fj$Application;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fj$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fj$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/fj;->d:Lo/fj$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "22671"

    .line 9
    iput-object v0, p0, Lo/fj;->b:Ljava/lang/String;

    const/4 v0, 0x7

    .line 11
    iput v0, p0, Lo/fj;->e:I

    const-string v0, "Background Content Prefetch"

    .line 13
    iput-object v0, p0, Lo/fj;->c:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/fj;->d:Lo/fj$Application;

    invoke-virtual {v0}, Lo/fj$Application;->c()Z

    move-result v0

    return v0
.end method

.method public static final i()J
    .locals 2

    sget-object v0, Lo/fj;->d:Lo/fj$Application;

    invoke-virtual {v0}, Lo/fj$Application;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/fj;->d:Lo/fj$Application;

    invoke-virtual {v0}, Lo/fj$Application;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/fj;->b:Ljava/lang/String;

    return-object v0
.end method
