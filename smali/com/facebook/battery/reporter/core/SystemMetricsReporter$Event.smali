.class public interface abstract Lcom/facebook/battery/reporter/core/SystemMetricsReporter$Event;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/battery/reporter/core/SystemMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation


# virtual methods
.method public abstract acquireEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract add(Ljava/lang/String;D)V
.end method

.method public abstract add(Ljava/lang/String;J)V
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isSampled()Z
.end method

.method public abstract logAndRelease()V
.end method
