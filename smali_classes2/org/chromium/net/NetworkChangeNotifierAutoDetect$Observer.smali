.class public interface abstract Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionSubtypeChanged(I)V
.end method

.method public abstract onConnectionTypeChanged(I)V
.end method

.method public abstract onNetworkConnect(JI)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method

.method public abstract onNetworkSoonToDisconnect(J)V
.end method

.method public abstract purgeActiveNetworkList([J)V
.end method
