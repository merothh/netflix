.class public final Lcom/netflix/cl/model/envelope/AddedMultipleContexs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/envelope/SimpleOperation;


# instance fields
.field private numberOfAddedContexts:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/netflix/cl/model/envelope/AddedMultipleContexs;->numberOfAddedContexts:I

    return-void
.end method


# virtual methods
.method public addItself(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    .line 31
    iget v0, p0, Lcom/netflix/cl/model/envelope/AddedMultipleContexs;->numberOfAddedContexts:I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    return-object p1
.end method
