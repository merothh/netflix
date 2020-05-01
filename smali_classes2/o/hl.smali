.class public final Lo/hl;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hl$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/hl$TaskDescription;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hl$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hl$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/hl;->c:Lo/hl$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lo/hl;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/hl;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_video_merch_autoplay_setting"

    return-object v0
.end method
