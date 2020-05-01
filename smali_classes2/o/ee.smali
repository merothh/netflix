.class public final Lo/ee;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ee$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/ee$TaskDescription;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ee$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ee$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ee;->d:Lo/ee$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "14286"

    .line 17
    iput-object v0, p0, Lo/ee;->b:Ljava/lang/String;

    const-string v0, "DrmManager Optimization"

    .line 19
    iput-object v0, p0, Lo/ee;->e:Ljava/lang/String;

    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lo/ee;->c:I

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/ee;->d:Lo/ee$TaskDescription;

    invoke-virtual {v0}, Lo/ee$TaskDescription;->e()Z

    move-result v0

    return v0
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/ee;->d:Lo/ee$TaskDescription;

    invoke-virtual {v0}, Lo/ee$TaskDescription;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/ee;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab14286"

    return-object v0
.end method
