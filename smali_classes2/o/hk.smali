.class public final Lo/hk;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hk$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/hk$ActionBar;


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hk$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hk$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/hk;->b:Lo/hk$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/hk;->enabled:Z

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/hk;->enabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "topten_killswitch"

    return-object v0
.end method
