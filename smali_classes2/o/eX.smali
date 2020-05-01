.class public final Lo/eX;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/eX$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/eX$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/eX$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/eX$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/eX;->d:Lo/eX$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "21538"

    .line 8
    iput-object v0, p0, Lo/eX;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lo/eX;->c:I

    const-string v0, "PDS Subtitle Optimization"

    .line 12
    iput-object v0, p0, Lo/eX;->e:Ljava/lang/String;

    return-void
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/eX;->d:Lo/eX$TaskDescription;

    invoke-virtual {v0}, Lo/eX$TaskDescription;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/eX;->a:Ljava/lang/String;

    return-object v0
.end method
