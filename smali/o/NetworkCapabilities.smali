.class public Lo/NetworkCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final a:Lo/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/NetworkCapabilities;

    invoke-direct {v0}, Lo/NetworkCapabilities;-><init>()V

    sput-object v0, Lo/NetworkCapabilities;->a:Lo/NetworkCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
