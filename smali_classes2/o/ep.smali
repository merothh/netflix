.class public final Lo/ep;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ep$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/ep$ActionBar;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ep$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ep$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15161"

    .line 51
    iput-object v0, p0, Lo/ep;->e:Ljava/lang/String;

    const-string v0, "Android Aim Low: Leaner Lolomo Load"

    .line 53
    iput-object v0, p0, Lo/ep;->c:Ljava/lang/String;

    const/4 v0, 0x5

    .line 55
    iput v0, p0, Lo/ep;->a:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->e()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->i()Z

    move-result v0

    return v0
.end method

.method public static final h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->c()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->d()Z

    move-result v0

    return v0
.end method

.method public static final k()Z
    .locals 1

    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ep;->e:Ljava/lang/String;

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
