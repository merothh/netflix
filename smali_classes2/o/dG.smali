.class public final Lo/dG;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dG$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/dG$TaskDescription;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dG$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dG$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dG;->b:Lo/dG$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "24021"

    .line 12
    iput-object v0, p0, Lo/dG;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lo/dG;->e:I

    const-string v0, "Partial Download and Playback"

    .line 16
    iput-object v0, p0, Lo/dG;->c:Ljava/lang/String;

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/dG;->b:Lo/dG$TaskDescription;

    invoke-virtual {v0}, Lo/dG$TaskDescription;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/dG;->d:Ljava/lang/String;

    return-object v0
.end method
