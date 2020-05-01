.class Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameInfo"
.end annotation


# instance fields
.field final type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final tzID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    .line 592
    iput-object p2, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;->type:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method
