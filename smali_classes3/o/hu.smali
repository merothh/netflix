.class public final Lo/hu;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hu$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/hu$ActionBar;


# instance fields
.field private xHEAAC_ABR_Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xHEAAC_ABR_Enabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hu$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hu$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/hu;->b:Lo/hu$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/hu;->xHEAAC_ABR_Enabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "xhe_aac"

    return-object v0
.end method
