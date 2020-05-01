.class public final Lo/gM;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gM$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/gM$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gM$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gM$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gM;->b:Lo/gM$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/gM;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "playback_specification_diagnostics"

    return-object v0
.end method
