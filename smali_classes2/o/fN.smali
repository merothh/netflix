.class public final Lo/fN;
.super Lo/fQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fN$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/fN$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fN$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fN$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/fN;->a:Lo/fN$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/fQ;-><init>()V

    return-void
.end method

.method public static final e()Z
    .locals 1

    sget-object v0, Lo/fN;->a:Lo/fN$Application;

    invoke-virtual {v0}, Lo/fN$Application;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "11962"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "11962"

    return-object v0
.end method
