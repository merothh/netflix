.class public final Lo/Vf$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "BaseInteractiveScene"

    .line 38
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/Vf$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Landroid/view/animation/LinearInterpolator;
    .locals 1

    .line 39
    invoke-static {}, Lo/Vf;->v()Landroid/view/animation/LinearInterpolator;

    move-result-object v0

    return-object v0
.end method
