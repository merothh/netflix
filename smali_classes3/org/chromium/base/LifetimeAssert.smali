.class public Lorg/chromium/base/LifetimeAssert;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/LifetimeAssert$WrappedReference;,
        Lorg/chromium/base/LifetimeAssert$CreationException;,
        Lorg/chromium/base/LifetimeAssert$LifetimeAssertException;,
        Lorg/chromium/base/LifetimeAssert$TestHook;
    }
.end annotation


# static fields
.field static sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;


# instance fields
.field final mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;


# direct methods
.method private constructor <init>(Lorg/chromium/base/LifetimeAssert$WrappedReference;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/chromium/base/LifetimeAssert;->mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/chromium/base/LifetimeAssert;
    .locals 4

    .line 122
    sget-boolean v0, Lorg/chromium/base/BuildConfig;->DCHECK_IS_ON:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lorg/chromium/base/LifetimeAssert;

    new-instance v1, Lorg/chromium/base/LifetimeAssert$WrappedReference;

    new-instance v2, Lorg/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2}, Lorg/chromium/base/LifetimeAssert$CreationException;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/base/LifetimeAssert$WrappedReference;-><init>(Ljava/lang/Object;Lorg/chromium/base/LifetimeAssert$CreationException;Z)V

    invoke-direct {v0, v1}, Lorg/chromium/base/LifetimeAssert;-><init>(Lorg/chromium/base/LifetimeAssert$WrappedReference;)V

    return-object v0
.end method

.method public static setSafeToGc(Lorg/chromium/base/LifetimeAssert;Z)V
    .locals 1

    .line 136
    sget-boolean v0, Lorg/chromium/base/BuildConfig;->DCHECK_IS_ON:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lorg/chromium/base/LifetimeAssert;->mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;

    iput-boolean p1, p0, Lorg/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    :cond_0
    return-void
.end method
