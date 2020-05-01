.class public abstract Lo/IpManagerEvent;
.super Lo/ConnectStats;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/ConnectStats;-><init>()V

    return-void
.end method

.method public static c(Landroid/widget/SeekBar;)Lo/IpManagerEvent;
    .locals 1

    .line 12
    new-instance v0, Lo/CaptivePortalProbeSpec;

    invoke-direct {v0, p0}, Lo/CaptivePortalProbeSpec;-><init>(Landroid/widget/SeekBar;)V

    return-object v0
.end method
