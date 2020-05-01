.class Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleLookupData"
.end annotation


# instance fields
.field public final locale:Lcom/ibm/icu/util/ULocale;

.field public final numbersKeyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->locale:Lcom/ibm/icu/util/ULocale;

    .line 158
    iput-object p2, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    return-void
.end method
