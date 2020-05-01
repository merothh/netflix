.class public abstract Lkotlin/jvm/internal/MutablePropertyReference0;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Lo/amQ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lo/amK;
    .locals 1

    .line 24
    invoke-static {p0}, Lo/amf;->c(Lkotlin/jvm/internal/MutablePropertyReference0;)Lo/amQ;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amQ;

    invoke-interface {v0}, Lo/amQ;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lo/amR$Activity;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amQ;

    invoke-interface {v0}, Lo/amQ;->getGetter()Lo/amR$Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lo/amT$ActionBar;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getGetter()Lo/amR$Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSetter()Lo/amO$Application;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getSetter()Lo/amQ$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSetter()Lo/amQ$ActionBar;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amQ;

    invoke-interface {v0}, Lo/amQ;->getSetter()Lo/amQ$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
