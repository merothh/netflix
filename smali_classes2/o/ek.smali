.class public final Lo/ek;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ek$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/ek$TaskDescription;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ek$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ek$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ek;->a:Lo/ek$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15123"

    .line 13
    iput-object v0, p0, Lo/ek;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lo/ek;->b:I

    const-string v0, "Android CPU Usage Capture In Playback"

    .line 17
    iput-object v0, p0, Lo/ek;->e:Ljava/lang/String;

    return-void
.end method

.method public static final h()J
    .locals 2

    sget-object v0, Lo/ek;->a:Lo/ek$TaskDescription;

    invoke-virtual {v0}, Lo/ek$TaskDescription;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/ek;->a:Lo/ek$TaskDescription;

    invoke-virtual {v0}, Lo/ek$TaskDescription;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/ek;->c:Ljava/lang/String;

    return-object v0
.end method
