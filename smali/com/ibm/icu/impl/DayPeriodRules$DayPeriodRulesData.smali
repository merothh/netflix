.class final Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DayPeriodRulesData"
.end annotation


# instance fields
.field localesToRuleSetNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field maxRuleSetNum:I

.field rules:[Lcom/ibm/icu/impl/DayPeriodRules;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>()V

    return-void
.end method
