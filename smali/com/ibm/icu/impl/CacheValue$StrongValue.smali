.class final Lcom/ibm/icu/impl/CacheValue$StrongValue;
.super Lcom/ibm/icu/impl/CacheValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ibm/icu/impl/CacheValue<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/ibm/icu/impl/CacheValue;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/ibm/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/ibm/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object p1
.end method
