.class public final Lcom/uber/autodispose/AutoDisposePlugins;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Z

.field private static volatile c:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lcom/uber/autodispose/OutsideScopeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static c()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/uber/autodispose/AutoDisposePlugins;->a:Z

    return v0
.end method

.method public static d()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lcom/uber/autodispose/OutsideScopeException;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/uber/autodispose/AutoDisposePlugins;->c:Lio/reactivex/functions/Consumer;

    return-object v0
.end method
