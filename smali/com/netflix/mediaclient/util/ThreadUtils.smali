.class public Lcom/netflix/mediaclient/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotOnMain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static assertOnMain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
