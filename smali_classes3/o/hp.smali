.class public final Lo/hp;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hp$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/hp$TaskDescription;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hp$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hp$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/hp;->a:Lo/hp$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ui_latency_tracker_force_enable"

    return-object v0
.end method
