.class public abstract Lo/Build$ComponentCallbacks;
.super Lo/Build$BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ComponentCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 78
    invoke-direct {p0, v1, v0, v2, v0}, Lo/Build$BroadcastReceiver;-><init>(ZLjava/lang/Class;ILo/amc;)V

    return-void
.end method
