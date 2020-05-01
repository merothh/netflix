.class final Lcom/ibm/icu/util/MeasureUnit$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/MeasureUnit$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 0

    .line 241
    new-instance p1, Lcom/ibm/icu/util/Currency;

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
