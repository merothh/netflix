.class public final Lo/hb;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hb$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/hb$Activity;


# instance fields
.field private sendWithLogblobs:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sendWithLogblobs"
    .end annotation
.end field

.field private sendWithPdsEvents:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sendWithPdsEvents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hb$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hb$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/hb;->d:Lo/hb$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lo/hb;->d:Lo/hb$Activity;

    invoke-virtual {v0}, Lo/hb$Activity;->b()Z

    move-result v0

    return v0
.end method

.method public static final c()Z
    .locals 1

    sget-object v0, Lo/hb;->d:Lo/hb$Activity;

    invoke-virtual {v0}, Lo/hb$Activity;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/hb;->sendWithLogblobs:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/hb;->sendWithPdsEvents:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "sendServiceTokensPolicy"

    return-object v0
.end method
