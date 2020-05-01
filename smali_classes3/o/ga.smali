.class public final Lo/ga;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ga$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/ga$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ga$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ga$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ga;->c:Lo/ga$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/ga;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_content_preview_v2"

    return-object v0
.end method
