.class public final Lo/Printer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/Pools;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lo/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/Printer;

    invoke-direct {v0}, Lo/Printer;-><init>()V

    sput-object v0, Lo/Printer;->e:Lo/Printer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/Printer;
    .locals 1

    .line 19
    sget-object v0, Lo/Printer;->e:Lo/Printer;

    return-object v0
.end method


# virtual methods
.method public b()Lo/Pools;
    .locals 1

    .line 15
    new-instance v0, Lo/Pools;

    invoke-direct {v0}, Lo/Pools;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/Printer;->b()Lo/Pools;

    move-result-object v0

    return-object v0
.end method
