.class public final Lo/XY$StateListAnimator;
.super Lo/sZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Response from player timed out"

    const-string v1, "3.4"

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, v0, v1, v2}, Lo/sZ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
