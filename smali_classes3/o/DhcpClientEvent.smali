.class public abstract Lo/DhcpClientEvent;
.super Lo/ConnectStats;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/ConnectStats;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/SeekBar;)Lo/DhcpClientEvent;
    .locals 1

    .line 12
    new-instance v0, Lo/WifiLinkQualityInfo;

    invoke-direct {v0, p0}, Lo/WifiLinkQualityInfo;-><init>(Landroid/widget/SeekBar;)V

    return-object v0
.end method
