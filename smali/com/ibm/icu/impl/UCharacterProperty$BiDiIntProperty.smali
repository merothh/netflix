.class Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BiDiIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .locals 1

    .line 471
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v0, 0x5

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method
