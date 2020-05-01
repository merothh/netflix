.class public final Lo/BadParcelableException;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lorg/json/JSONArray;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$iterator"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lo/amG;->b(II)Lo/amD;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/kotlinx/JSONArrayKt$iterator$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/kotlinx/JSONArrayKt$iterator$1;-><init>(Lorg/json/JSONArray;)V

    check-cast v1, Lo/alA;

    invoke-static {v0, v1}, Lo/ane;->d(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object p0

    invoke-interface {p0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
