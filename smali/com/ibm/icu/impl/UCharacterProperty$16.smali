.class Lcom/ibm/icu/impl/UCharacterProperty$16;
.super Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$16;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .line 537
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->getJoiningGroup(I)I

    move-result p1

    return p1
.end method
