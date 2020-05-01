.class public final Lo/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/widget/CompoundButton;)Lo/SntpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            ")",
            "Lo/SntpClient<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 31
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lo/WebAddress;

    invoke-direct {v0, p0}, Lo/WebAddress;-><init>(Landroid/widget/CompoundButton;)V

    return-object v0
.end method
