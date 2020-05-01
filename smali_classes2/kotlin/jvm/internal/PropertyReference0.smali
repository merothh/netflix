.class public abstract Lkotlin/jvm/internal/PropertyReference0;
.super Lkotlin/jvm/internal/PropertyReference;
.source ""

# interfaces
.implements Lo/amR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lo/amK;
    .locals 1

    .line 24
    invoke-static {p0}, Lo/amf;->b(Lkotlin/jvm/internal/PropertyReference0;)Lo/amR;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amR;

    invoke-interface {v0}, Lo/amR;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lo/amR$Activity;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amR;

    invoke-interface {v0}, Lo/amR;->getGetter()Lo/amR$Activity;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
