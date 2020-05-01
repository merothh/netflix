.class public final Lo/eJ;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eJ$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/eJ$Application;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eJ$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eJ$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eJ;->d:Lo/eJ$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18713"

    .line 21
    iput-object v0, p0, Lo/eJ;->b:Ljava/lang/String;

    const-string v0, "Aggressive Video Prefetching"

    .line 23
    iput-object v0, p0, Lo/eJ;->e:Ljava/lang/String;

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lo/eJ;->c:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/eJ;->d:Lo/eJ$Application;

    invoke-virtual {v0}, Lo/eJ$Application;->d()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eJ;->d:Lo/eJ$Application;

    invoke-virtual {v0}, Lo/eJ$Application;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/eJ;->b:Ljava/lang/String;

    return-object v0
.end method
