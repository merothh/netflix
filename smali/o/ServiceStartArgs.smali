.class public final Lo/ServiceStartArgs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchManager;


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final e:Lo/SearchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/alA<",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lo/ServiceStartArgs;->a:Landroid/net/ConnectivityManager;

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance p1, Lo/SearchableInfo;

    iget-object v0, p0, Lo/ServiceStartArgs;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p1, v0, p2}, Lo/SearchableInfo;-><init>(Landroid/net/ConnectivityManager;Lo/alA;)V

    check-cast p1, Lo/SearchManager;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lo/SynchronousUserSwitchObserver;

    iget-object v1, p0, Lo/ServiceStartArgs;->a:Landroid/net/ConnectivityManager;

    invoke-direct {v0, p1, v1, p2}, Lo/SynchronousUserSwitchObserver;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lo/alA;)V

    move-object p1, v0

    check-cast p1, Lo/SearchManager;

    .line 29
    :goto_0
    iput-object p1, p0, Lo/ServiceStartArgs;->e:Lo/SearchManager;

    return-void

    .line 27
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lo/ServiceStartArgs;->e:Lo/SearchManager;

    invoke-interface {v0}, Lo/SearchManager;->a()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/ServiceStartArgs;->e:Lo/SearchManager;

    invoke-interface {v0}, Lo/SearchManager;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ServiceStartArgs;->e:Lo/SearchManager;

    invoke-interface {v0}, Lo/SearchManager;->e()V

    return-void
.end method
