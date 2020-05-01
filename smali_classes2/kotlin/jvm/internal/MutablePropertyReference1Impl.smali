.class public Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.super Lkotlin/jvm/internal/MutablePropertyReference1;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/amH;


# direct methods
.method public constructor <init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->e:Lo/amH;

    .line 17
    iput-object p2, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->d:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->b()Lo/amU$Application;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lo/amU$Application;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lo/amH;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->e:Lo/amH;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->a:Ljava/lang/String;

    return-object v0
.end method
