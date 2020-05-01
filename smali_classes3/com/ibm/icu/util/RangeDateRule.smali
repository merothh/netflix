.class public Lcom/ibm/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# instance fields
.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/DateRule;)V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/RangeDateRule;->add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V

    return-void
.end method

.method public add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    new-instance v1, Lcom/ibm/icu/util/Range;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/Range;-><init>(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
