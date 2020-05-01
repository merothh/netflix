.class public final Lo/GE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/GC;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/GE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/GE;

    invoke-direct {v0}, Lo/GE;-><init>()V

    sput-object v0, Lo/GE;->a:Lo/GE;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/GE;
    .locals 1

    .line 19
    sget-object v0, Lo/GE;->a:Lo/GE;

    return-object v0
.end method


# virtual methods
.method public c()Lo/GC;
    .locals 1

    .line 15
    new-instance v0, Lo/GC;

    invoke-direct {v0}, Lo/GC;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/GE;->c()Lo/GC;

    move-result-object v0

    return-object v0
.end method
