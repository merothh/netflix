.class public final Lo/gr;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gr$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/gr$ActionBar;


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gr$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gr$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gr;->d:Lo/gr$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/gr;->d:Lo/gr$ActionBar;

    invoke-virtual {v0}, Lo/gr$ActionBar;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/gr;->enabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "interactive_data"

    return-object v0
.end method
