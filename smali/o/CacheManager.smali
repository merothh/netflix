.class public final Lo/CacheManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/SpellCheckerSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/CacheManager;

    invoke-direct {v0}, Lo/CacheManager;-><init>()V

    sput-object v0, Lo/CacheManager;->d:Lo/CacheManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/CacheManager;
    .locals 1

    .line 19
    sget-object v0, Lo/CacheManager;->d:Lo/CacheManager;

    return-object v0
.end method


# virtual methods
.method public d()Lo/SpellCheckerSession;
    .locals 1

    .line 15
    new-instance v0, Lo/SpellCheckerSession;

    invoke-direct {v0}, Lo/SpellCheckerSession;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/CacheManager;->d()Lo/SpellCheckerSession;

    move-result-object v0

    return-object v0
.end method
