.class public abstract Lo/StorageEventListener$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Application"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/netflix/dial/DialDevice;Lcom/netflix/dial/DialDevice;)V
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract c(Ljava/lang/Exception;)V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public abstract d(Lcom/netflix/dial/DialDevice;)V
.end method

.method public abstract e(Lcom/netflix/dial/DialDevice;)V
.end method
