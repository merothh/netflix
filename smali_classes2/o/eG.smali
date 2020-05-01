.class public final Lo/eG;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eG$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/eG$Application;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eG$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eG$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eG;->c:Lo/eG$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18255"

    .line 16
    iput-object v0, p0, Lo/eG;->e:Ljava/lang/String;

    const/4 v0, 0x6

    .line 18
    iput v0, p0, Lo/eG;->a:I

    const-string v0, "Android Display Page Simplification"

    .line 22
    iput-object v0, p0, Lo/eG;->b:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->j()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->c()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/eG;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
