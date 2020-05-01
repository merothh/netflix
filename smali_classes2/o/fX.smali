.class public final Lo/fX;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fX$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/fX$ActionBar;


# instance fields
.field private Av1Disabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Av1ModuleIsDisabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fX$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fX$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fX;->e:Lo/fX$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/fX;->Av1Disabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "av1_module_disable_configuration"

    return-object v0
.end method
