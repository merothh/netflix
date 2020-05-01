.class public Lorg/java_websocket/exceptions/IncompleteHandshakeException;
.super Ljava/lang/RuntimeException;
.source "IncompleteHandshakeException.java"


# instance fields
.field private newsize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    iget v0, p0, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->newsize:I

    return v0
.end method
