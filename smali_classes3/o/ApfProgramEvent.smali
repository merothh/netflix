.class public final Lo/ApfProgramEvent;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/widget/SearchView;)Lo/SntpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            ")",
            "Lo/SntpClient<",
            "Lo/ApfStats;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 29
    invoke-static {p0, v0}, Lo/ScoredNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lo/SslCertificate;

    invoke-direct {v0, p0}, Lo/SslCertificate;-><init>(Landroid/widget/SearchView;)V

    return-object v0
.end method
