.class public abstract Lkotlin/jvm/internal/MutablePropertyReference1;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Lo/amP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/amU$Application;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lo/amT;

    move-result-object v0

    check-cast v0, Lo/amP;

    invoke-interface {v0}, Lo/amP;->b()Lo/amU$Application;

    move-result-object v0

    return-object v0
.end method

.method protected computeReflected()Lo/amK;
    .locals 1

    .line 25
    invoke-static {p0}, Lo/amf;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
