.class public abstract Lcom/fasterxml/jackson/core/io/InputDecorator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lo/AbstractInputMethodService;Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public abstract e(Lo/AbstractInputMethodService;[BII)Ljava/io/InputStream;
.end method
