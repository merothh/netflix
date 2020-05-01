.class public Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;
.super Lcom/ibm/icu/text/TimeZoneNames$Factory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeZoneNames(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;
    .locals 0

    .line 617
    sget-object p1, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-object p1
.end method
