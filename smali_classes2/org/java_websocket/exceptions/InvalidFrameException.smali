.class public Lorg/java_websocket/exceptions/InvalidFrameException;
.super Lorg/java_websocket/exceptions/InvalidDataException;
.source "InvalidFrameException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
