.class public final Lcom/netflix/android/moneyball/fields/ChoiceField;
.super Lcom/netflix/android/moneyball/fields/Field;
.source ""


# instance fields
.field private _value:Ljava/lang/String;

.field private option:Lcom/netflix/android/moneyball/fields/OptionField;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/android/moneyball/FlowMode;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowMode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/moneyball/fields/Field;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V

    .line 19
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    const-string p2, "value"

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getAttrWithDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    const-string p1, "options"

    .line 39
    invoke-virtual {p0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getAttr(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 43
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->initOptions(Ljava/util/List;)V

    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getIndex()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->option:Lcom/netflix/android/moneyball/fields/OptionField;

    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.android.moneyball.fields.OptionField"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getOption()Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->option:Lcom/netflix/android/moneyball/fields/OptionField;

    return-object v0
.end method

.method public final getOption(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/OptionField;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/netflix/android/moneyball/fields/OptionField;

    return-object v1
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->option:Lcom/netflix/android/moneyball/fields/OptionField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->option:Lcom/netflix/android/moneyball/fields/OptionField;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initOptions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "opts"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p1, Ljava/lang/Iterable;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 82
    check-cast v1, Ljava/util/Map;

    .line 49
    new-instance v2, Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/netflix/android/moneyball/fields/OptionField;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V

    .line 50
    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    invoke-static {v1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0, v2}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V

    .line 53
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    return-void
.end method

.method public final setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->option:Lcom/netflix/android/moneyball/fields/OptionField;

    return-void
.end method

.method public final setOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "newVal"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->options:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/android/moneyball/fields/OptionField;

    :cond_2
    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p0, v1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V

    .line 72
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/android/moneyball/fields/ChoiceField;->_value:Ljava/lang/String;

    :cond_3
    return-void
.end method
