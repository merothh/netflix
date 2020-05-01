.class public interface abstract Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProperties"
.end annotation


# static fields
.field public static final DEFAULT_NEGATIVE_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_NEGATIVE_PREFIX_PATTERN:Ljava/lang/String;

.field public static final DEFAULT_NEGATIVE_SUFFIX:Ljava/lang/String;

.field public static final DEFAULT_NEGATIVE_SUFFIX_PATTERN:Ljava/lang/String;

.field public static final DEFAULT_POSITIVE_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_POSITIVE_PREFIX_PATTERN:Ljava/lang/String;

.field public static final DEFAULT_POSITIVE_SUFFIX:Ljava/lang/String;

.field public static final DEFAULT_POSITIVE_SUFFIX_PATTERN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getNegativePrefix()Ljava/lang/String;
.end method

.method public abstract getNegativePrefixPattern()Ljava/lang/String;
.end method

.method public abstract getNegativeSuffix()Ljava/lang/String;
.end method

.method public abstract getNegativeSuffixPattern()Ljava/lang/String;
.end method

.method public abstract getPositivePrefix()Ljava/lang/String;
.end method

.method public abstract getPositivePrefixPattern()Ljava/lang/String;
.end method

.method public abstract getPositiveSuffix()Ljava/lang/String;
.end method

.method public abstract getPositiveSuffixPattern()Ljava/lang/String;
.end method

.method public abstract getSignAlwaysShown()Z
.end method
