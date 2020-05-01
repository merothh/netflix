.class public final Lo/eM;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eM$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/eM$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eM$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eM$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/eM;->e:Lo/eM$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "19052"

    .line 12
    iput-object v0, p0, Lo/eM;->a:Ljava/lang/String;

    const/16 v0, 0x8

    .line 14
    iput v0, p0, Lo/eM;->b:I

    const-string v0, "Pre Query Search V3"

    .line 16
    iput-object v0, p0, Lo/eM;->c:Ljava/lang/String;

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v0}, Lo/eM$Application;->e()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v0}, Lo/eM$Application;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/eM;->a:Ljava/lang/String;

    return-object v0
.end method

.method public z_()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
