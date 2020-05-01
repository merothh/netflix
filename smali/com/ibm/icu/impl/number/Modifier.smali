.class public interface abstract Lcom/ibm/icu/impl/number/Modifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/Modifier$BaseModifier;,
        Lcom/ibm/icu/impl/number/Modifier$AffixModifier;,
        Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;
    }
.end annotation


# virtual methods
.method public abstract apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getSuffix()Ljava/lang/String;
.end method

.method public abstract isStrong()Z
.end method

.method public abstract length()I
.end method
