.class public final Lo/ew;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ew$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/ew$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ew$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ew$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ew;->d:Lo/ew$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "18029"

    .line 13
    iput-object v0, p0, Lo/ew;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/ew;->b:I

    const-string v0, "Play Services Cronet for Startup Performance"

    .line 17
    iput-object v0, p0, Lo/ew;->a:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/ew;->d:Lo/ew$TaskDescription;

    invoke-virtual {v0}, Lo/ew$TaskDescription;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/ew;->c:Ljava/lang/String;

    return-object v0
.end method
