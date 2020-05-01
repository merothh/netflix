.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameInfo"
.end annotation


# instance fields
.field mzID:Ljava/lang/String;

.field type:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field tzID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>()V

    return-void
.end method
