.class public final Lo/UnaryOperator;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo/BiConsumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "$this$viewTypeInternal"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lo/BiConsumer;->e()I

    move-result p0

    return p0
.end method

.method public static final a(Lo/Consumer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$this$objectToBindInternal"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "objectToBind()"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lo/Locale;I)Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Locale;",
            "I)",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    const-string v0, "$this$getModelForPositionInternal"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lo/Locale;->b(I)Lo/BiConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lo/Locale;)Lo/Set;
    .locals 1

    const-string v0, "$this$boundViewHoldersInternal"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lo/Locale;->e()Lo/Set;

    move-result-object p0

    return-object p0
.end method
