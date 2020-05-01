.class public final Lo/gG;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gG$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/gG$Application;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gG$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gG$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/gG;->c:Lo/gG$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lo/gG;->isEnabled:Z

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lo/gG;->c:Lo/gG$Application;

    invoke-virtual {v0}, Lo/gG$Application;->e()Z

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lo/gG;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lo/gG;->isEnabled:Z

    return p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "newcanvassesuilatencytracker"

    return-object v0
.end method
