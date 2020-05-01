.class public interface abstract Lcom/netflix/cl/Platform$ErrorReporter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/cl/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorReporter"
.end annotation


# virtual methods
.method public abstract logHandledException(Ljava/lang/String;)V
.end method

.method public abstract logHandledException(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
