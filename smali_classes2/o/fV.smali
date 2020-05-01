.class public final Lo/fV;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fV$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/fV$ActionBar;


# instance fields
.field private myCoolFeatureOn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "myCoolFeatureOn"
    .end annotation
.end field

.field private playEventRepoFeatureConfig:Lo/hs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playEventRepoConfig"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fV$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fV$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fV;->b:Lo/fV$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lo/fV;->myCoolFeatureOn:Z

    .line 33
    new-instance v0, Lo/hs;

    invoke-direct {v0}, Lo/hs;-><init>()V

    iput-object v0, p0, Lo/fV;->playEventRepoFeatureConfig:Lo/hs;

    return-void
.end method


# virtual methods
.method public final d()Lo/hs;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/fV;->playEventRepoFeatureConfig:Lo/hs;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "feature_control_config"

    return-object v0
.end method
