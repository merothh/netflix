.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amK;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lo/amK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->b()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/amK;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/amK;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lo/amK;
    .locals 1

    .line 65
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lo/amK;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lo/amK;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lo/amK;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lo/amK;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getOwner()Lo/amH;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lo/amK;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lo/amK;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {v0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw v0
.end method

.method public getReturnType()Lo/amS;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->getReturnType()Lo/amS;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->getVisibility()Lkotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lo/amK;

    move-result-object v0

    invoke-interface {v0}, Lo/amK;->isSuspend()Z

    move-result v0

    return v0
.end method
