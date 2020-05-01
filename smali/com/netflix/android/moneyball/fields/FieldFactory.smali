.class public final Lcom/netflix/android/moneyball/fields/FieldFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/android/moneyball/fields/FieldFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/netflix/android/moneyball/fields/FieldFactory;

    invoke-direct {v0}, Lcom/netflix/android/moneyball/fields/FieldFactory;-><init>()V

    sput-object v0, Lcom/netflix/android/moneyball/fields/FieldFactory;->INSTANCE:Lcom/netflix/android/moneyball/fields/FieldFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createField(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/android/moneyball/FlowMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/android/moneyball/fields/Field;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowMode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-class v0, Lcom/netflix/android/moneyball/fields/Field;

    if-eqz p4, :cond_0

    .line 38
    :try_start_0
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    const-string v0, "Class.forName(type)"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    const-class p4, Lcom/netflix/android/moneyball/fields/Field;

    :goto_0
    move-object v0, p4

    :cond_0
    const-string p4, "fieldType"

    .line 49
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 50
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    check-cast p4, Ljava/lang/String;

    .line 51
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "Choice"

    .line 57
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/ChoiceField;

    goto :goto_2

    :sswitch_1
    const-string v0, "Action"

    .line 56
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/ActionField;

    goto :goto_2

    :sswitch_2
    const-string v0, "Boolean"

    .line 53
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto :goto_2

    :sswitch_3
    const-string v0, "Numeric"

    .line 54
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/NumberField;

    goto :goto_2

    :sswitch_4
    const-string v0, "localizationKey"

    .line 55
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/StringField;

    goto :goto_2

    :sswitch_5
    const-string v0, "String"

    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/netflix/android/moneyball/fields/StringField;

    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    const-class p4, Lcom/netflix/android/moneyball/fields/Field;

    :goto_2
    move-object v0, p4

    goto/16 :goto_5

    .line 50
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p4, "options"

    .line 60
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 62
    const-class v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    goto/16 :goto_5

    :cond_4
    const-string p4, "withFields"

    .line 63
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "mode"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p4, "value"

    .line 66
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 67
    const-class v0, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto/16 :goto_5

    .line 68
    :cond_6
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    .line 69
    const-class v0, Lcom/netflix/android/moneyball/fields/NumberField;

    goto/16 :goto_5

    .line 70
    :cond_7
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 71
    const-class v0, Lcom/netflix/android/moneyball/fields/NumberField;

    goto :goto_5

    .line 70
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_9
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 73
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_c

    check-cast p4, Ljava/lang/String;

    const-string v0, "true"

    .line 75
    invoke-static {v0, p4, v3}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "false"

    .line 76
    invoke-static {v0, p4, v3}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_3

    .line 80
    :cond_a
    const-class p4, Lcom/netflix/android/moneyball/fields/StringField;

    goto/16 :goto_2

    .line 78
    :cond_b
    :goto_3
    const-class p4, Lcom/netflix/android/moneyball/fields/BooleanField;

    goto/16 :goto_2

    .line 73
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string p4, "minLength"

    .line 83
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    const-string p4, "maxLength"

    .line 84
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    const-string p4, "validationRegex"

    .line 85
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 86
    :cond_e
    const-class v0, Lcom/netflix/android/moneyball/fields/StringField;

    goto :goto_5

    .line 65
    :cond_f
    :goto_4
    const-class v0, Lcom/netflix/android/moneyball/fields/ActionField;

    .line 89
    :cond_10
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p4

    const-string v0, "fieldToCreate.constructors"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    array-length v0, p4

    if-ne v0, v3, :cond_12

    const/4 v0, 0x0

    .line 92
    :try_start_1
    aget-object p4, p4, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v3

    const/4 v0, 0x2

    aput-object p3, v1, v0

    invoke-virtual {p4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_11

    check-cast p4, Lcom/netflix/android/moneyball/fields/Field;

    goto :goto_6

    :cond_11
    new-instance p4, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.android.moneyball.fields.Field"

    invoke-direct {p4, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :catch_1
    new-instance p4, Lcom/netflix/android/moneyball/fields/Field;

    invoke-direct {p4, p1, p2, p3}, Lcom/netflix/android/moneyball/fields/Field;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V

    :goto_6
    return-object p4

    .line 102
    :cond_12
    new-instance p4, Lcom/netflix/android/moneyball/fields/Field;

    invoke-direct {p4, p1, p2, p3}, Lcom/netflix/android/moneyball/fields/Field;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V

    return-object p4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_5
        -0x47f0d2fa -> :sswitch_4
        -0x14034d13 -> :sswitch_3
        0x67140408 -> :sswitch_2
        0x74946a56 -> :sswitch_1
        0x784249c1 -> :sswitch_0
    .end sparse-switch
.end method
