.class Lcom/ibm/icu/text/PluralRulesSerialProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method
