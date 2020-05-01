.class public final Lo/gb;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gb$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/gb$TaskDescription;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gb$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gb$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/gb;->e:Lo/gb$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lo/gb;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lo/gb;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "dp_lite_enabled"

    return-object v0
.end method
