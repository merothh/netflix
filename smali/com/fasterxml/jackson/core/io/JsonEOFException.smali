.class public Lcom/fasterxml/jackson/core/io/JsonEOFException;
.super Lcom/fasterxml/jackson/core/JsonParseException;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final e:Lcom/fasterxml/jackson/core/JsonToken;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/JsonEOFException;->e:Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method
