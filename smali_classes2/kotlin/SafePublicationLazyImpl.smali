.class public final Lkotlin/SafePublicationLazyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aka;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/SafePublicationLazyImpl$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/aka<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:Lkotlin/SafePublicationLazyImpl$ActionBar;

.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlin/SafePublicationLazyImpl<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile b:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/SafePublicationLazyImpl$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/SafePublicationLazyImpl$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lkotlin/SafePublicationLazyImpl;->d:Lkotlin/SafePublicationLazyImpl$ActionBar;

    .line 125
    const-class v0, Lkotlin/SafePublicationLazyImpl;

    .line 126
    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    .line 124
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlin/SafePublicationLazyImpl;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lkotlin/SafePublicationLazyImpl;->b:Lo/alB;

    .line 92
    sget-object p1, Lo/aki;->e:Lo/aki;

    iput-object p1, p0, Lkotlin/SafePublicationLazyImpl;->a:Ljava/lang/Object;

    .line 94
    sget-object p1, Lo/aki;->e:Lo/aki;

    iput-object p1, p0, Lkotlin/SafePublicationLazyImpl;->c:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 121
    new-instance v0, Lkotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SafePublicationLazyImpl;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lkotlin/SafePublicationLazyImpl;->a:Ljava/lang/Object;

    .line 99
    sget-object v1, Lo/aki;->e:Lo/aki;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lkotlin/SafePublicationLazyImpl;->b:Lo/alB;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 108
    sget-object v1, Lkotlin/SafePublicationLazyImpl;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lo/aki;->e:Lo/aki;

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 109
    check-cast v1, Lo/alB;

    iput-object v1, p0, Lkotlin/SafePublicationLazyImpl;->b:Lo/alB;

    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lkotlin/SafePublicationLazyImpl;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lkotlin/SafePublicationLazyImpl;->a:Ljava/lang/Object;

    sget-object v1, Lo/aki;->e:Lo/aki;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lkotlin/SafePublicationLazyImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/SafePublicationLazyImpl;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method
