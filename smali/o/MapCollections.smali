.class public final Lo/MapCollections;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/MalformedJsonException;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lo/MapCollections;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/MapCollections;

    invoke-direct {v0}, Lo/MapCollections;-><init>()V

    sput-object v0, Lo/MapCollections;->e:Lo/MapCollections;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/MapCollections;
    .locals 1

    .line 19
    sget-object v0, Lo/MapCollections;->e:Lo/MapCollections;

    return-object v0
.end method


# virtual methods
.method public e()Lo/MalformedJsonException;
    .locals 1

    .line 15
    new-instance v0, Lo/MalformedJsonException;

    invoke-direct {v0}, Lo/MalformedJsonException;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/MapCollections;->e()Lo/MalformedJsonException;

    move-result-object v0

    return-object v0
.end method
