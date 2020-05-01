.class public interface abstract Lio/realm/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# virtual methods
.method public varargs abstract debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract getMinimumNativeDebugLevel()I
.end method

.method public varargs abstract info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
