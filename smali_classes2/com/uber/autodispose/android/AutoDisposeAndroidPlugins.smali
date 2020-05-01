.class public final Lcom/uber/autodispose/android/AutoDisposeAndroidPlugins;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile d:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method public static b(Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 88
    sget-object v0, Lcom/uber/autodispose/android/AutoDisposeAndroidPlugins;->d:Lio/reactivex/functions/BooleanSupplier;

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0

    .line 93
    :cond_0
    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 96
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "defaultChecker == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
