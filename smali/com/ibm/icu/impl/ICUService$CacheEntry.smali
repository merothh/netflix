.class final Lcom/ibm/icu/impl/ICUService$CacheEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation


# instance fields
.field final actualDescriptor:Ljava/lang/String;

.field final service:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    return-void
.end method
