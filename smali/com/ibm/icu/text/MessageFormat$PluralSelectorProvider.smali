.class final Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PluralSelectorProvider"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private msgFormat:Lcom/ibm/icu/text/MessageFormat;

.field private rules:Lcom/ibm/icu/text/PluralRules;

.field private type:Lcom/ibm/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2082
    const-class v0, Lcom/ibm/icu/text/MessageFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V
    .locals 0

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    .line 2085
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->type:Lcom/ibm/icu/text/PluralRules$PluralType;

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 3

    .line 2089
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->rules:Lcom/ibm/icu/text/PluralRules;

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat;->access$700(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->type:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 2098
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;

    .line 2099
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    iget v1, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->access$800(Lcom/ibm/icu/text/MessageFormat;I)I

    move-result v0

    .line 2100
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    iget-object v2, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/ibm/icu/text/MessageFormat;->access$900(Lcom/ibm/icu/text/MessageFormat;ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    .line 2101
    iget v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat;->access$1000(Lcom/ibm/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2102
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat;->access$1000(Lcom/ibm/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    iput-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    .line 2104
    :cond_1
    iget-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    if-nez v0, :cond_2

    .line 2105
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Lcom/ibm/icu/text/MessageFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat;->access$1100(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    const/4 v0, 0x1

    .line 2106
    iput-boolean v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    .line 2109
    :cond_2
    iget-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v1, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    .line 2110
    iget-object v0, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_3

    .line 2111
    iget-object p1, p1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    .line 2112
    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2114
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
