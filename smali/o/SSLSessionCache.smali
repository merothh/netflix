.class public final Lo/SSLSessionCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/SSLSessionCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/SSLSessionCache;

    invoke-direct {v0}, Lo/SSLSessionCache;-><init>()V

    sput-object v0, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lo/SSLSessionCache;->d(Ljava/lang/Object;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
