.class public final Lo/HttpResponseCache;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static d(Landroid/widget/TextView;)Lo/SntpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lo/SntpClient<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 107
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lo/IpReachabilityEvent;

    invoke-direct {v0, p0}, Lo/IpReachabilityEvent;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method
