.class public Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;
.super Lcom/ibm/icu/impl/number/Format$SingularFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositiveNegativeRounderTargetFormat"
.end annotation


# instance fields
.field private final positiveNegative:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

.field private final rounder:Lcom/ibm/icu/impl/number/Rounder;

.field private final target:Lcom/ibm/icu/impl/number/Format$TargetFormat;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;Lcom/ibm/icu/impl/number/Rounder;Lcom/ibm/icu/impl/number/Format$TargetFormat;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->positiveNegative:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    .line 217
    iput-object p2, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    .line 218
    iput-object p3, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    return-void
.end method


# virtual methods
.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Rounder;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 247
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->positiveNegative:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 248
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Format$TargetFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    return-void
.end method

.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;
    .locals 3

    .line 223
    sget-object v0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    .line 225
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 1

    .line 233
    iget-object p2, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->rounder:Lcom/ibm/icu/impl/number/Rounder;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/Rounder;->apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 234
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNaN()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->positiveNegative:Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;

    if-eqz p2, :cond_0

    .line 235
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNegative()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;->getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    invoke-interface {v0, p1, p3, p4}, Lcom/ibm/icu/impl/number/Format$TargetFormat;->target(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result p1

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    .line 239
    invoke-interface {p2, p3, p4, p1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    :cond_1
    return p1
.end method
