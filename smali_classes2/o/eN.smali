.class public final Lo/eN;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eN$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/eN$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eN$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eN$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eN;->e:Lo/eN$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19209"

    .line 18
    iput-object v0, p0, Lo/eN;->b:Ljava/lang/String;

    const-string v0, "Use Mdx Ping For Session Discovery"

    .line 20
    iput-object v0, p0, Lo/eN;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lo/eN;->d:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/eN;->e:Lo/eN$Application;

    invoke-virtual {v0}, Lo/eN$Application;->e()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/eN;->e:Lo/eN$Application;

    invoke-virtual {v0}, Lo/eN$Application;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/eN;->b:Ljava/lang/String;

    return-object v0
.end method
