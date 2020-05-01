.class public final Lcom/netflix/android/moneyball/fields/ActionField;
.super Lcom/netflix/android/moneyball/fields/Field;
.source ""


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private final withFields$delegate:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/netflix/android/moneyball/fields/ActionField;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "withFields"

    const-string v4, "getWithFields()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/android/moneyball/fields/ActionField;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

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

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/moneyball/fields/Field;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V

    .line 15
    iput-object p2, p0, Lcom/netflix/android/moneyball/fields/ActionField;->withFields$delegate:Ljava/util/Map;

    const-string p1, "withFields"

    const-string p2, ""

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/moneyball/fields/ActionField;->getAttrWithDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 27
    check-cast p1, Ljava/lang/String;

    const-string p2, ","

    invoke-static {p1, p2}, Lo/aev;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "safeSplit(lWithFields, \",\")"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 87
    check-cast p3, Ljava/lang/String;

    .line 28
    invoke-static {p3}, Lo/aev;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/netflix/android/moneyball/fields/ActionField;->setWithFields(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 31
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/netflix/android/moneyball/fields/ActionField;->setWithFields(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final findParent(Lcom/netflix/android/moneyball/GetField;)Lcom/netflix/android/moneyball/GetField;
    .locals 2

    .line 45
    invoke-interface {p1}, Lcom/netflix/android/moneyball/GetField;->getFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/netflix/android/moneyball/GetField;->getFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    .line 49
    instance-of v1, v0, Lcom/netflix/android/moneyball/GetField;

    if-eqz v1, :cond_2

    .line 50
    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    invoke-direct {p0, v0}, Lcom/netflix/android/moneyball/fields/ActionField;->findParent(Lcom/netflix/android/moneyball/GetField;)Lcom/netflix/android/moneyball/GetField;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 53
    :cond_2
    instance-of v1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 55
    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    invoke-direct {p0, v1}, Lcom/netflix/android/moneyball/fields/ActionField;->findParent(Lcom/netflix/android/moneyball/GetField;)Lcom/netflix/android/moneyball/GetField;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getWithFields()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ActionField;->withFields$delegate:Ljava/util/Map;

    sget-object v1, Lcom/netflix/android/moneyball/fields/ActionField;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lo/amT;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akI;->e(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final setWithFields(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/android/moneyball/fields/ActionField;->withFields$delegate:Ljava/util/Map;

    sget-object v1, Lcom/netflix/android/moneyball/fields/ActionField;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lo/amT;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute()Lcom/netflix/android/moneyball/fields/ActionExecutionResult;
    .locals 8

    .line 65
    new-instance v7, Lcom/netflix/android/moneyball/fields/ActionExecutionResult;

    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/ActionField;->getRequiredFields()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/android/moneyball/fields/ActionExecutionResult;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILo/amc;)V

    return-object v7
.end method

.method public final getFlow()Ljava/lang/String;
    .locals 2

    const-string v0, "flow"

    const-string v1, ""

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/netflix/android/moneyball/fields/ActionField;->getAttrWithDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 2

    const-string v0, "mode"

    const-string v1, ""

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/netflix/android/moneyball/fields/ActionField;->getAttrWithDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRequiredFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/ActionField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    invoke-direct {p0, v0}, Lcom/netflix/android/moneyball/fields/ActionField;->findParent(Lcom/netflix/android/moneyball/GetField;)Lcom/netflix/android/moneyball/GetField;

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lcom/netflix/android/moneyball/fields/ActionField;->getWithFields()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/android/moneyball/fields/ActionField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    .line 77
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    check-cast v2, Ljava/util/List;

    return-object v2
.end method
