.class public Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalSamples"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;",
            ">;Z)V"
        }
    .end annotation

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    .line 1106
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    .line 1107
    iput-boolean p3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    return-void
.end method

.method private static checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V
    .locals 3

    .line 1157
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getVisibleDecimalDigitCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ne p0, v1, :cond_2

    return-void

    .line 1158
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed number range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 12

    .line 1116
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "integer"

    .line 1118
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    sget-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    goto :goto_0

    :cond_0
    const-string v1, "decimal"

    .line 1120
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1121
    sget-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    :goto_0
    const/4 v2, 0x7

    .line 1125
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1127
    sget-object v2, Lcom/ibm/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v5, v2, :cond_6

    aget-object v8, p0, v5

    const-string v9, "\u2026"

    .line 1128
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_4

    .line 1136
    sget-object v9, Lcom/ibm/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    .line 1137
    array-length v10, v9

    if-eq v10, v4, :cond_3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 1144
    new-instance v8, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v10, v9, v3

    invoke-direct {v8, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1145
    new-instance v10, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v9, v9, v4

    invoke-direct {v10, v9}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-static {v1, v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1147
    invoke-static {v1, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1148
    new-instance v9, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v9, v8, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;-><init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed number range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1139
    :cond_3
    new-instance v8, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v9, v9, v3

    invoke-direct {v8, v9}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1140
    invoke-static {v1, v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1141
    new-instance v9, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v9, v8, v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;-><init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1134
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only have \u2026 at the end of samples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1153
    :cond_6
    new-instance p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;-><init>(Lcom/ibm/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    return-object p0

    .line 1123
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Samples must start with \'integer\' or \'decimal\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$SampleType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ","

    .line 1193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x20

    .line 1195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1197
    :cond_1
    iget-boolean v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    if-nez v1, :cond_2

    const-string v1, ", \u2026"

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
