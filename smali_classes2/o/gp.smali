.class public final Lo/gp;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gp$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/gp$ActionBar;


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gp$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gp$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gp;->c:Lo/gp$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/gp;->enabled:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/gp;->enabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "interactive_skip_tutorial"

    return-object v0
.end method
