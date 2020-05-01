.class public final Lo/SslError;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static d(Landroid/widget/SeekBar;)Lo/SntpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")",
            "Lo/SntpClient<",
            "Lo/ConnectStats;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 65
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lo/DefaultNetworkEvent;

    invoke-direct {v0, p0}, Lo/DefaultNetworkEvent;-><init>(Landroid/widget/SeekBar;)V

    return-object v0
.end method
