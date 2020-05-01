.class public final Lo/gP;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gP$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/gP$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gP$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gP$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gP;->e:Lo/gP$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lo/gP;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/gP;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "brightness_enable_property"

    return-object v0
.end method
