.class public final Lo/gi;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gi$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/gi$Activity;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gi$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gi$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gi;->e:Lo/gi$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo/gi;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/gi;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "falcor_memory_expiration"

    return-object v0
.end method
