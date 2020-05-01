.class public Lcom/fasterxml/jackson/core/json/DupDetector;
.super Ljava/lang/Object;
.source "DupDetector.java"


# instance fields
.field protected _firstName:Ljava/lang/String;

.field protected _secondName:Ljava/lang/String;

.field protected _seen:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _source:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;

    return-void
.end method

.method public static rootDetector(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/DupDetector;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/json/DupDetector;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public child()Lcom/fasterxml/jackson/core/json/DupDetector;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/json/DupDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/json/DupDetector;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;

    return-object v0
.end method

.method public isDup(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;

    if-nez v2, :cond_2

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;

    return-void
.end method
