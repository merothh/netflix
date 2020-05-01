.class public Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/RbnfLenientScannerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/RbnfLenientScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rbnf"

    .line 31
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected createScanner(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/RbnfLenientScanner;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz p2, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {p2, p1}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    const/16 p2, 0x11

    .line 108
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->setDecomposition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    sget-boolean p2, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "++++"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    move-object p1, v0

    .line 121
    :goto_0
    new-instance p2, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;

    invoke-direct {p2, p1, v0}, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$1;)V

    return-object p2
.end method

.method public get(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/RbnfLenientScanner;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RbnfLenientScanner;

    if-eqz v2, :cond_0

    .line 81
    monitor-exit v1

    return-object v2

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->createScanner(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter p2

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 83
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
