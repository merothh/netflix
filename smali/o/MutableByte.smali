.class public final Lo/MutableByte;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/MutableInt;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/MutableByte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/MutableByte;

    invoke-direct {v0}, Lo/MutableByte;-><init>()V

    sput-object v0, Lo/MutableByte;->a:Lo/MutableByte;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/MutableByte;
    .locals 1

    .line 19
    sget-object v0, Lo/MutableByte;->a:Lo/MutableByte;

    return-object v0
.end method


# virtual methods
.method public b()Lo/MutableInt;
    .locals 1

    .line 15
    new-instance v0, Lo/MutableInt;

    invoke-direct {v0}, Lo/MutableInt;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/MutableByte;->b()Lo/MutableInt;

    move-result-object v0

    return-object v0
.end method
