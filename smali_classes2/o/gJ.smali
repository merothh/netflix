.class public final Lo/gJ;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gJ$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/gJ$ActionBar;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gJ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gJ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gJ;->d:Lo/gJ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lo/gJ;->isEnabled:Z

    return-void
.end method

.method public static final synthetic d(Lo/gJ;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lo/gJ;->isEnabled:Z

    return p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "parentalcontrolskillswitch"

    return-object v0
.end method
