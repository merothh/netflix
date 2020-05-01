.class public abstract Lo/DhcpErrorEvent;
.super Lo/ConnectStats;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/ConnectStats;-><init>()V

    return-void
.end method

.method public static b(Landroid/widget/SeekBar;IZ)Lo/DhcpErrorEvent;
    .locals 1

    .line 13
    new-instance v0, Lo/CaptivePortalProbeResult;

    invoke-direct {v0, p0, p1, p2}, Lo/CaptivePortalProbeResult;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Z
.end method

.method public abstract d()I
.end method
