.class public abstract Lcom/ibm/icu/util/Holiday;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# static fields
.field private static noHolidays:[Lcom/ibm/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Lcom/ibm/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    .line 219
    sput-object v0, Lcom/ibm/icu/util/Holiday;->noHolidays:[Lcom/ibm/icu/util/Holiday;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method
