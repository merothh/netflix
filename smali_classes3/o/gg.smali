.class public final Lo/gg;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gg$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/gg$Activity;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gg$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gg$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gg;->d:Lo/gg$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lo/gg;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/gg;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "extras_enable_playgraph"

    return-object v0
.end method
