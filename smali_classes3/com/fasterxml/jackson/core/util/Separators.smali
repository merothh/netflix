.class public Lcom/fasterxml/jackson/core/util/Separators;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final b:C

.field private final c:C

.field private final d:C


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2c

    const/16 v1, 0x3a

    .line 27
    invoke-direct {p0, v1, v0, v0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    return-void
.end method

.method public constructor <init>(CCC)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-char p1, p0, Lcom/fasterxml/jackson/core/util/Separators;->d:C

    .line 33
    iput-char p2, p0, Lcom/fasterxml/jackson/core/util/Separators;->b:C

    .line 34
    iput-char p3, p0, Lcom/fasterxml/jackson/core/util/Separators;->c:C

    return-void
.end method

.method public static b()Lcom/fasterxml/jackson/core/util/Separators;
    .locals 1

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()C
    .locals 1

    .line 53
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->d:C

    return v0
.end method
