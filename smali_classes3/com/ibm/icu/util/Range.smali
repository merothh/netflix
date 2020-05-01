.class Lcom/ibm/icu/util/Range;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public rule:Lcom/ibm/icu/util/DateRule;

.field public start:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    .line 166
    iput-object p2, p0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method
