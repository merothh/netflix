.class final Lo/SearchableInfo$ActionBar;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SearchableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lo/SearchableInfo;

.field private final c:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SearchableInfo;Lo/alA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lo/SearchableInfo$ActionBar;->a:Lo/SearchableInfo;

    .line 106
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p2, p0, Lo/SearchableInfo$ActionBar;->c:Lo/alA;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 115
    iget-object v0, p0, Lo/SearchableInfo$ActionBar;->a:Lo/SearchableInfo;

    iput-object p1, v0, Lo/SearchableInfo;->c:Landroid/net/Network;

    .line 116
    iget-object p1, p0, Lo/SearchableInfo$ActionBar;->c:Lo/alA;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 109
    iget-object v0, p0, Lo/SearchableInfo$ActionBar;->a:Lo/SearchableInfo;

    const/4 v1, 0x0

    check-cast v1, Landroid/net/Network;

    iput-object v1, v0, Lo/SearchableInfo;->c:Landroid/net/Network;

    .line 110
    iget-object v0, p0, Lo/SearchableInfo$ActionBar;->c:Lo/alA;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    :cond_0
    return-void
.end method
