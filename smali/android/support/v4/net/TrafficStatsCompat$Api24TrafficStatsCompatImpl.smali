.class Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;
.super Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.source "TrafficStatsCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method
