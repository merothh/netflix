.class public final Lo/gW;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gW$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/gW$Activity;


# instance fields
.field private isDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDisabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gW$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gW$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gW;->c:Lo/gW$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/gW;->isDisabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "disable_rolre_config"

    return-object v0
.end method
