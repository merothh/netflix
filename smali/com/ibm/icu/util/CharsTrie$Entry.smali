.class public final Lcom/ibm/icu/util/CharsTrie$Entry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public chars:Ljava/lang/CharSequence;

.field public value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/CharsTrie$1;)V
    .locals 0

    .line 421
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie$Entry;-><init>()V

    return-void
.end method
