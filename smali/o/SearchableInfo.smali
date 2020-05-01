.class public final Lo/SearchableInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SearchableInfo$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final b:Lo/SearchableInfo$ActionBar;

.field public volatile c:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Lo/alA<",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cm"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SearchableInfo;->a:Landroid/net/ConnectivityManager;

    .line 86
    new-instance p1, Lo/SearchableInfo$ActionBar;

    invoke-direct {p1, p0, p2}, Lo/SearchableInfo$ActionBar;-><init>(Lo/SearchableInfo;Lo/alA;)V

    iput-object p1, p0, Lo/SearchableInfo;->b:Lo/SearchableInfo$ActionBar;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lo/SearchableInfo;->c:Landroid/net/Network;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lo/SearchableInfo;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lo/SearchableInfo;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "none"

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "wifi"

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 99
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ethernet"

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cellular"

    goto :goto_1

    :cond_4
    const-string v0, "unknown"

    :goto_1
    return-object v0
.end method

.method public e()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/SearchableInfo;->a:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lo/SearchableInfo;->b:Lo/SearchableInfo$ActionBar;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
