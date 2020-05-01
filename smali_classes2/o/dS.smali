.class public final Lo/dS;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dS$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/dS$TaskDescription;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dS$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dS$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dS;->e:Lo/dS$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "12831"

    .line 9
    iput-object v0, p0, Lo/dS;->b:Ljava/lang/String;

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Lo/dS;->c:I

    const-string v0, "HEAAC_AudioBitrate"

    .line 12
    iput-object v0, p0, Lo/dS;->a:Ljava/lang/String;

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lo/dS;->e:Lo/dS$TaskDescription;

    invoke-virtual {v0}, Lo/dS$TaskDescription;->d()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lo/dS;->e:Lo/dS$TaskDescription;

    invoke-virtual {v0}, Lo/dS$TaskDescription;->b()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lo/dS;->e:Lo/dS$TaskDescription;

    invoke-virtual {v0}, Lo/dS$TaskDescription;->e()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lo/dS;->e:Lo/dS$TaskDescription;

    invoke-virtual {v0}, Lo/dS$TaskDescription;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/dS;->b:Ljava/lang/String;

    return-object v0
.end method
