.class public final Lo/gd;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gd$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/gd$ActionBar;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gd$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gd$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/gd;->e:Lo/gd$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/gd;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "downloadedforyou"

    return-object v0
.end method